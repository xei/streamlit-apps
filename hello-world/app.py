import numpy as np
import pandas as pd
import streamlit as st

st.write("""
# Hello World!
Here we have two plots. One for *Series* and the other for *DataFrame*.
""")

ts = pd.Series(np.random.randn(1000), index=pd.date_range("1/1/2000", periods=1000))
ts = ts.cumsum()
st.line_chart(ts)

df = pd.DataFrame(np.random.randn(1000, 4), index=ts.index, columns=list("ABCD"))
df = df.cumsum()
st.line_chart(df)
