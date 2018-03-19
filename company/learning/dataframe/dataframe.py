from pandas import DataFrame as df
import pandas as pd
import numpy as np
# FULL DOCS AT: https://pandas.pydata.org/pandas-docs/stable/generated/pandas.DataFrame.html

#creation
d = df({'a' : [1],'b' : [2]})

dataHash = {'a' : [1],
        'b' : [2],
        'c' : [3],
        }
d = pd.DataFrame(data=dataHash, dtype=np.int64)
# You can create a dataframe if you have a matrix
mat = ([[6, 9, 4, 3, 4],
       [2, 7, 6, 9, 7],
       [5, 9, 5, 3, 9],
       [6, 4, 3, 4, 6],
       [4, 5, 1, 1, 7]])
# Make sure to match column numbers with the dataframe column number
d = pd.DataFrame(mat,columns=['a','b','c','d','e'])

#sorting
#Random Number DataFrame
mat = np.random.randint(low=0, high=1000, size=(5, 5))
d = pd.DataFrame(mat,columns=['a','b','c','d','e'])

# https://pandas.pydata.org/pandas-docs/stable/generated/pandas.DataFrame.sort_values.html
#Sorting by column
d = d.sort_values(by=['a'], ascending=[False], kind='mergesort')
#Can rows rather than columns

d = d.sort_values(by=[1], ascending=[True], kind='quicksort', axis='columns', na_position ='first')
print(d)
