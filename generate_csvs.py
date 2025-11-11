import pandas as pd
import numpy as np

# -------- Exercise 1: population.csv -------- #
def create_population_csv():
    years = np.arange(2000, 2021)
    population = np.random.randint(5_000_000, 10_000_000, size=len(years))
    df = pd.DataFrame({'Year': years, 'Population': population})
    df.to_csv('population.csv', index=False)
    print("Created population.csv")

# -------- Exercise 2: series1.csv and series2.csv -------- #
def create_series_csvs():
    x = np.arange(1, 21)
    y1 = np.sin(x / 2)
    y2 = np.cos(x / 2)

    df1 = pd.DataFrame({'X': x, 'Y1': y1})
    df2 = pd.DataFrame({'X': x, 'Y2': y2})

    df1.to_csv('series1.csv', index=False)
    df2.to_csv('series2.csv', index=False)
    print("Created series1.csv and series2.csv")

# -------- Exercise 3: data.csv -------- #
def create_data_csv():
    np.random.seed(0)
    data = {
        'A': np.random.normal(10, 2, 100),
        'B': np.random.normal(20, 5, 100),
        'C': np.random.normal(5, 1, 100)
    }
    df = pd.DataFrame(data)
    df.to_csv('data.csv', index=False)
    print("Created data.csv")

# -------- MAIN -------- #
if __name__ == '__main__':
    create_population_csv()
    create_series_csvs()
    create_data_csv()
    print("All CSV files created successfully.")
