import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
from sklearn.preprocessing import LabelEncoder

data=pd.read_csv("C:\\Users\\HK\\Downloads\\Book.csv",sep=",")
data

leplace=LabelEncoder()

data['PLACE']=leplace.fit_transform(data['PLACE'])
data

data=data.drop(['CUSTOMERNAME'],axis=1)
data

real_x=data.iloc[:,0:3].values
real_y=data.iloc[:,3].values

real_y

from sklearn.linear_model import LinearRegression

lr=LinearRegression()

lr.fit(real_x,real_y)

lr.score(real_x,real_y)

real_x

#[ 8,  8,  3]
lr.predict(real_x)

lr.predict([[ 3,  6,  3]])
