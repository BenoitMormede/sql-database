import re

def strip_replace_ws (df):
    df2 = df.copy()
    df2.columns = df2.columns.str.lower().str.replace(" ","_")
    return df2


def replace_values(df, whole_replacements, substring_replacements):
    """
    df: pandas DataFrame
    whole_replacements: A dictionary for direct replacements.
    substring_replacements: A dictionary where keys are substrings and values are what they should be replaced with.
    """
    df2 = df.copy()

    # Perform whole replacements
    for key, value in whole_replacements.items():
        df2.replace(key, value, inplace=True)

    # Perform substring replacements
    for key, value in substring_replacements.items():
        if isinstance(key, str):
            escaped_key = re.escape(key)  # Escape special characters in the key (like *)
            for col in df2.select_dtypes(include='object').columns:
                df2[col] = df2[col].str.replace(escaped_key, value, regex=True)
    
    return df2
