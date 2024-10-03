# Functions used on WGI analysis
import pycountry

def drop_columns(df):
    return df.drop(columns=["StdErr", "NumSrc", "Lower", "Upper"])

def rename_columns(df):
    return df.rename(columns={"Country/Territory": "country", "Code": "code", "Estimate": "estimate", "Rank": "rank"})

def reset_rsf_index(rsf):
    return rsf.reset_index(drop=True)

def get_country_code(country_name):
    try:
        return pycountry.countries.lookup(country_name).alpha_3
    except LookupError:
        return None
    
import pandas as pd


def clean_columns(df):
    
    '''
    This function cleans the column titles by replacing whitespaces with underscores and converting everything into lowercase, as well as dropping all columns that aren't of our interest(drops all but country name and 2023).
    '''
    
    df.columns = df.columns.str.lower()
    df.columns = df.columns.str.replace(" ", "_")
    df = df.loc[:, ['country']]
    
    #This line of code turns the countries into lowercase
    df.loc[:, 'country'] = df['country'].str.lower()
    
    #This line of code lets us improve the readability of the values.
    pd.options.display.float_format = '{:.2f}'.format
    
    #Dealing with null values: replacing na with "no data"
    df.fillna(0, inplace = True)
    
    return df

#standardize names:
import difflib

def reformat_country_names(df, country_column, reference_countries):
    """
    Reformat country names in a dataframe to match a reference list of countries.
    If no match is found, the original country name is retained.

    Parameters:
    df (pd.DataFrame): The dataframe containing the country names to be reformatted.
    country_column (str): The name of the column containing country names.
    reference_countries (list): A list of reference country names to match against.

    Returns:
    pd.DataFrame: The dataframe with reformatted country names.
    """
    
    def get_closest_country_name(country_name):
        closest_match = difflib.get_close_matches(country_name, reference_countries, n=1, cutoff=0.6)
        return closest_match[0] if closest_match else country_name

    # Apply the function to reformat the country names
    df[country_column] = df[country_column].apply(get_closest_country_name)
    
    return df




