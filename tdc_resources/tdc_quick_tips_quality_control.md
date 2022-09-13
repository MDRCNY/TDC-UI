# TDC QUICK TIPS: QUALITY CONTROL TIPS AND TRICKS WORKING WITH HUMAN SERVICES DATA
### Richard Hendra, MDRC
#### Jun 15, 2019

**Raw human services data — such as TANF administrative data — requires a lot of cleaning and transformation in order to be useable for analysis.** Common issues include: data being entered incorrectly, data fields having high rates of missingness, and data files being organized at a level that is different than the level needed for the analysis file (for example, the data file might be organized at the transaction level and might need to be converted to the individual-level).

So, what can you do to ensure that TANF data are processed correctly? Let's focus on the example of getting data ready for analysis. TANF data, like most public benefits data, are usually stored at the transaction level. That means that each record in a database represents one TANF payment to a case. But most analyses are done at the level of the individual. There are a lot of steps to get from the transaction level to the individual level.

As you restructure data a lot can go wrong. You can double count or under count payments, you can merge to the wrong fields, or filter out the wrong records. Therefore, to ensure quality control in data processing, we suggest a data checking approach called 'input/output checking' which accounts for all records and payments that came in. The approach is simple and might look something like this:

|           |   |       |             |
|-----------|---|-------|-------------|
| __Total In__	| __=__ |	__1200__ |	__$105,440.00__ |
| __Total Dropped__	| __=__	| __(10)__	| __($1,000.00)__ |
| __Total Out__ |	__=__	| __1190__ |	__$104,440.00__ |


Note how the analyst kept track of all records and sums. This simple reconciliation approach has helped us avoid many data processing errors when working with human services data. So, as you move through data processing, keep track of the number of records and the sum of TANF payments so that you can account for why record counts or sums change throughout every step. You look for any leakage or inflation of records or sums. The basic idea is that "data can neither be created nor destroyed" without accounting for where records or sums went. Checks like the ones above can be done in spreadsheets, but it can be more efficient to use structured query language (SQL) which is a topic covered in the **Applied Data Analytics** class.

The TDC team will be working to provide resources to help you at every stage of your data analytic project. Blog posts like this one will provide bite size tips for how to handle common issues. But the TDC team will also be providing more in-depth resources on our website as well as more intensive training and technical assistance opportunities. For example, the TDC **TANF data model** — developed by TDC partner Chapin Hall — is a sample data structure that can be created from common data elements and facilitates easy data analysis.

In a future posts we plan to discuss other QC tips focusing on "print cases" and using anticipated patterns to aid in data quality control. Have ideas you'd like to share? Would you like us to provide more resources and training opportunities on fundamental data analysis topics like this? Please email us at **cdicode@mdrc.org** to let us know.

