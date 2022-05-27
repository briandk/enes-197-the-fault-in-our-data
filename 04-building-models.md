# Building Models

## Pre-Class Assignment

1.  Pick a data-driven model.
2.  Posit the structure of the model.
3.  What other parameters could or should have been incorporated into the model?

## Example Model

### Specify, Fit, Summarize


```python
import formulaic
import statsmodels.api as sm

import seaborn as sns

diamonds = sns.load_dataset("diamonds")

# Specify the model with a formula
y, X = formulaic.model_matrix("price ~ carat", diamonds)

# Fit the model
regression = sm.OLS(y, X).fit()

# Print the model summary
regression.summary()
```

```{=html}
<table class="simpletable">
<caption>OLS Regression Results</caption>
<tr>
  <th>Dep. Variable:</th>          <td>price</td>      <th>  R-squared:         </th>  <td>   0.849</td>  
</tr>
<tr>
  <th>Model:</th>                   <td>OLS</td>       <th>  Adj. R-squared:    </th>  <td>   0.849</td>  
</tr>
<tr>
  <th>Method:</th>             <td>Least Squares</td>  <th>  F-statistic:       </th>  <td>3.041e+05</td> 
</tr>
<tr>
  <th>Date:</th>             <td>Fri, 27 May 2022</td> <th>  Prob (F-statistic):</th>   <td>  0.00</td>   
</tr>
<tr>
  <th>Time:</th>                 <td>00:53:50</td>     <th>  Log-Likelihood:    </th> <td>-4.7273e+05</td>
</tr>
<tr>
  <th>No. Observations:</th>      <td> 53940</td>      <th>  AIC:               </th>  <td>9.455e+05</td> 
</tr>
<tr>
  <th>Df Residuals:</th>          <td> 53938</td>      <th>  BIC:               </th>  <td>9.455e+05</td> 
</tr>
<tr>
  <th>Df Model:</th>              <td>     1</td>      <th>                     </th>      <td> </td>     
</tr>
<tr>
  <th>Covariance Type:</th>      <td>nonrobust</td>    <th>                     </th>      <td> </td>     
</tr>
</table>
<table class="simpletable">
<tr>
      <td></td>         <th>coef</th>     <th>std err</th>      <th>t</th>      <th>P>|t|</th>  <th>[0.025</th>    <th>0.975]</th>  
</tr>
<tr>
  <th>Intercept</th> <td>-2256.3606</td> <td>   13.055</td> <td> -172.830</td> <td> 0.000</td> <td>-2281.949</td> <td>-2230.772</td>
</tr>
<tr>
  <th>carat</th>     <td> 7756.4256</td> <td>   14.067</td> <td>  551.408</td> <td> 0.000</td> <td> 7728.855</td> <td> 7783.996</td>
</tr>
</table>
<table class="simpletable">
<tr>
  <th>Omnibus:</th>       <td>14025.341</td> <th>  Durbin-Watson:     </th>  <td>   0.986</td> 
</tr>
<tr>
  <th>Prob(Omnibus):</th>  <td> 0.000</td>   <th>  Jarque-Bera (JB):  </th> <td>153030.525</td>
</tr>
<tr>
  <th>Skew:</th>           <td> 0.939</td>   <th>  Prob(JB):          </th>  <td>    0.00</td> 
</tr>
<tr>
  <th>Kurtosis:</th>       <td>11.035</td>   <th>  Cond. No.          </th>  <td>    3.65</td> 
</tr>
</table><br/><br/>Notes:<br/>[1] Standard Errors assume that the covariance matrix of the errors is correctly specified.
```
