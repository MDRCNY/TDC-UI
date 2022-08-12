# TDC QUICK TIPS: DEALING WITH OUTLIERS IN HUMAN SERVICES DATA
### Richard Hendra, MDRC
#### Jun 15, 2019

When you start working with human services data, you will likely find some pretty messy data. You might find people seemingly born in the future, jobs that started after they ended, or five-digit hourly wage rates. Don't worry, this is a universal problem. Outliers have been with us since astronomers argued about them in the 18th century¹ but this blog discusses a few tips and tricks we've learned working with outliers in human services data.

**Where they come from.** Outliers typically result from one of the following situations: 1) regular variation (the values are "real" but are unusually high or low for the population being studied), 2) errors due to summing over duplicates, 3) data entry, transfer, or processing errors, 4) errors due to method of aggregation (i.e., use of TANF payment date rather than effective date, 4) shared or incorrect identifiers, 5) misinterpretation of questions and 6) unknown reasons. Outliers often signal underlying data problems that should be investigated.

**How to find them.** First, establish believability thresholds and evaluate the cases above this threshold (how many and are they plausible?). Generally, government transfer payments such as TANF or child care subsidy payments are set up with strict **rules** which bound the range of data. Look at the top and bottom percentiles — for example, values at the [90th, 95th, 99th] — for values that fall outside of the acceptable range.

**What to do.** Other approaches include deleting them (if you know they are wrong), top code them (if you aren't sure), or create simpler measures that count the percent above a value rather than using the original data (for example the percentage of people making over $1,000 a month).

Want to learn more about how to approach data analysis issues like outliers? Consider signing up for the TDC **applied data analytics** course or check out our other tools and resources in the **data analysis section** of our website. There are a range of more advanced statistical approaches that we can point you to if you email us at **cdicode@mdrc.org**. Please let us know if more content like this would be useful for you.

¹Barnett, V. (1978). The study of outliers: purpose and model. *Journal of the Royal Statistical Society: Series C (Applied Statistics), 27(3)*, 242-250.
