import pandas as pd


def clean_columns(df):
    
    '''
    This function cleans the column titles by replacing whitespaces with underscores and converting everything into lowercase, as well as dropping all columns that aren't of our interest(drops all but country name and 2023).
    '''
    
    df.columns = df.columns.str.lower()
    df.columns = df.columns.str.replace(" ", "_")
    df = df.loc[:, ['country_name', '2022']]
    
    #This line of code turns the countries into lowercase
    df.loc[:, 'country_name'] = df['country_name'].str.lower()
    
    #This line of code lets us improve the readability of the values.
    pd.options.display.float_format = '{:.2f}'.format
    
    #Dealing with null values: replacing na with "no data"
    df.fillna(0, inplace = True)
    
    return df

#standardize names:
def standard_name(df):
    '''
    This function helps us standardize the country names of each csv file to the happiness report names. We also drop some regions which aren't in the report.
    '''
    
    # Create a mapping for the country names that need to be renamed
    country_name_mapping = {
        "Cote d'Ivoire": "Ivory Coast",
        "Russian Federation": "Russia",
        "Syrian Arab Republic": "Syria",
        "Turkiye": "Turkey",
        "Viet Nam": "Vietnam"," Kyrgyz Republic": "Kyrgyzstan",
        "Lao PDR": "Laos",
        "Hong Kong SAR": "Hong Kong S.A.R. of China",
        "Macao SAR": "Macao",
        "Slovak Republic": "Slovakia",
        "Sint Maarten (Dutch part)": "Sint Maarten",
        "Syrian Arab Republic": "Syria",
        "Turkiye": "Turkey",
        "Cote d'Ivoire": "Ivory Coast",
        "Viet Nam": "Vietnam"
    }
    # Apply the mapping to rename countries in the precipitation dataset
    df['Country Name'] = df['Country Name'].replace(country_name_mapping)
    
    # Drop rows that are regions or classifications instead of countries
    regions_to_drop = [
        'Arab World', 'Caribbean small states', 'Central Europe and the Baltics', 'East Asia & Pacific',
        'East Asia & Pacific (IDA & IBRD countries)', 'Europe & Central Asia', 'European Union', 'Euro area',
        'Latin America & Caribbean', 'Low & middle income', 'Middle income', 'OECD members', 'Sub-Saharan Africa',
        'World', 'High income', 'Fragile and conflict affected situations', 'Least developed countries: UN classification',
    ]
    
    df = df[~df['Country Name'].isin(regions_to_drop)]
    
    return df