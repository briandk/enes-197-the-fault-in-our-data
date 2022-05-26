---
author: "Brian Danielak"
date: "2022-05-20"
---

# Course Learning Objectives {.unnumbered}

## Manipulating Data

-   Express data manipulations in terms of tidyverse/siuba verbs:
    -   **select** columns of data
    -   **arrange** data based on values in a column
    -   **filter** rows of data by some predicate/condition
    -   **group** rows of data by a columnar value
    -   **summarize** grouped data by some aggregate measure (mean, median, sum)
    -   **mutate** columns by applying a transformation function to data values (e.g., creating a new column of data based on existing values; transforming categorical into numeric and vice versa)
    -   **count** observations based on a column value

## Understanding a grammar of graphics

Make and analyze plots using Wilkinson's Grammar of Graphics

-   Analyzing Plots
    -   **Identify** the coordinate system of a plot
    -   **identify** the layers of a plot
    -   **specify** the aesthetic mappings of a plot
    -   **specify** scales used in the aesthetic mappings
-   Making Plots
    -   **choose** and **justify** the appropriate coordinate system for a plot
    -   **choose** and **justify** the appropriate aesthetic mappings of a plot
    -   **choose** and **justify** scales to apply to those aesthetic mappings

## Fitting a model to data

-   Use scikit-learn's linear regression to fit a multi-feature linear model (multiple linear regression)

## Interrogating a model

### How we think about interrogating the model

-   How do I figure out what's happening when I run my model?
-   What information can I get about my model?
    -   What diagnostic plots can I get from my model?
        -   lines/functions of best fit
        -   residuals
        -   histograms
    -   What numerical summaries can I get from my data?
        -   5-number summary (Tukey)
        -   Measures of central tendency/typicality
        -   Measures of variation
        -   Extrema and outliers
        -   (if available) tables of predicted-vs-actual model results for Supervised learning situations
-   How does my model behave in extrema/limiting cases?
    -   What are some ways I could generate random data to throw at this model?
    -   How can I generate extreme data? What would that mean?
-   Is this model answering the question I want to ask?
-   In retrospect, does what comes out of the model echo how the real system behaves/should behave?
-   What statements can I make (in plain writing, say English) about the performance of my model?

### Learning Objectives: For a given model, students will be able to

-   **Enumerate** some techniques (visual, numerical, or other) for interrogating a model. Examples would include calculating a measure of central tendency, plotting actual data vs. model fit, creating distribution diagrams/histograms/kernel density estimates.
-   **implement** at least two different interrogation techniques:
-   **describe** the model's faithfulness (if it's time-based, what's the long-run behavior? if it's statistical, where do the data depart from the model? If it's non-parametric, what insight do we get from it?)
-   **Identify the error in their models**, through (for example) tabular summaries of residuals, cumulative residual plots, smoothing and confidence intervals. Example: ![seaborn joint plot with confidence intervals and marginal distributions](http://seaborn.pydata.org/_images/regression_marginals.png).
-   **Create a plot** to assess model fit
-   **Judge and justify** the appropriateness of a model using diagnostic plots (and justify their reasoning)

## Refining a model

### How we think about refining the model

-   How do I achieve a better fit?
    -   What constitutes a "better fit?"
-   How do I think about the complexity of my model?
    -   What *is* model complexity?
    -   Should I add terms to my model?
    -   Should I change the value of any of the input parameters?
    -   Should I add interactions to my model?
    -   Should I rethink the mathematical relationships I've posed? (the data looks nonlinear, but I'm attempting a linear fit)
-   How do I understand the trade-off between interpretability and model complexity?
-   If I make the model more complex, how will that impact:
    -   The time it takes to program/debug
    -   The time it takes to actually execute on a computer
    -   The time it takes to interpret/make sense of the results?
-   What's the least I can do to make my model useful? What's the minimal amount of complexity I need to encode to get something useful?
-   What information are my diagnostics giving me?
    -   How do I think about model refinements in light of that information

### Learning Objectives: Students will be able to

-   **compare two variations of a model** (say, a linear model and a quadratic model) and argue for which model better captures the phenomenon
-   For a given model, **interpret their model qualitatively**
-   For a given model, **suggest and justify a refinement to it**

## Understanding data

-   Determine the feature-space (what are the columns?)
-   Make a dataset [tidy](https://www.jstatsoft.org/index.php/jss/article/view/v059i10/v59i10.pdf)
-   Get numerical summaries of data (mean, median, mode, variance)
-   Visually and numerically examine correlations between features
-   Filter a dataset's rows by some condition, for example `flint_data[flint_data[‘lead_levels’] > legal_limit]`
-   Group a dataset by categorical values (`flint_data.groupby(‘zip_code’).sum()`)
-   Generate a by-group analysis based on values of a feature (for example, with aggregate statistics like sum, count, mean)
-   Given a dataset, fit a parametric model to the data
-   As in modeling, assess the fit, faithfulness, and limitations of the model

## Plotting

-   Plot and *interpret* a distribution of 1-variable
-   Plot and *interpret* a graphic of multiple variables scatterplot, box-and-whiskers, pie chart, time series, line graph, bar graph, compositions of plots, experimental scatterplot, subplots, contour plot
-   Use aesthetics to encode multiple dimensions of information into a single plot (e.g., using stroke-color, shape, size, fill-color, opacity, and line-type to encode additional information)
-   Use [small multiples](https://en.wikipedia.org/wiki/Small_multiple) to encode multiple dimensions of information into a single plot (facetting by a variable, for example, or a [scatterplot matrix](http://docs.ggplot2.org/0.9.2.1/plotmatrix.html)

## Sharing/publicizing an analysis (reproducible research/open science)

### Learning Objectives: Students will be able to

-   **Create an iPython Notebook** that mixes both Python code and explanatory markdown
-   **Share an iPython Notebook** using NBconvert / NBviewer
-   **Download someone's existing iPython Notebook**
    -   Possibly by *forking* the repository
    -   **review someone else's code**
    -   **modify their own fork** of the upstream repository
    -   **justify their modifications**
    -   **Issue a pull request** on the upstream repository
