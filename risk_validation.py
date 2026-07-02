import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
df = pd.read_csv("WA_Fn-UseC_-HR-Employee-Attrition.csv")
print(df.head())
print(df.info())
print(df.shape)
df["Attrition_Binary"] = df["Attrition"].map({
    "Yes":1,
    "No":0
})
df["RiskScore"] = (
    (df["OverTime"]=="Yes").astype(int)*2
    +(df["JobSatisfaction"]<=2).astype(int)*2
    +(df["DistanceFromHome"]>15).astype(int)
    +(df["YearsSinceLastPromotion"]>=3).astype(int)*2
    +(df["WorkLifeBalance"]<=2).astype(int)
    +(df["EnvironmentSatisfaction"]<=2).astype(int)
    +(df["BusinessTravel"]=="Travel_Frequently").astype(int)
)
def risk(score):

    if score<=3:
        return "Low"

    elif score<=6:
        return "Medium"

    else:
        return "High"

df["RiskTier"]=df["RiskScore"].apply(risk)
print(df[["RiskScore","RiskTier"]].head())

print("\nCorrelation:")
print(df[["RiskScore", "Attrition_Binary"]].corr())

print("\nAttrition Rate by Risk Tier:")

print(
    df.groupby("RiskTier")["Attrition_Binary"].mean() * 100
)

print("\nEmployees in each Risk Tier:")

print(df["RiskTier"].value_counts())

print("\nDepartment-wise High Risk Employees:")

print(
    df[df["RiskTier"]=="High"]
    .groupby("Department")
    .size()
)

df.to_csv(
    "employee_risk_final.csv",
    index=False
)

print("Final dataset exported successfully!")