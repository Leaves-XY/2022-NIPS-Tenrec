import pandas as pd
import numpy as np

df = pd.read_csv("ctr_data_1M.csv")

# 随机抽 5 万用户
users = df["user_id"].drop_duplicates()
sample_users = users.sample(n=50000, random_state=42)

small_df = df[df["user_id"].isin(sample_users)]

small_df.to_csv("ctr_data_user50k_1.csv", index=False)
print("small size:", len(small_df))