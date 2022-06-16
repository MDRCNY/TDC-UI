# TANF Data Collaborative UI Wage Data Toolkit

This GitHub repository accompanies the TANF Data Collaborative (TDC) UI Wage Data Toolkit [INSERT LINK] and shares resources for program administrators and researchers who are preparing employment data from state Unemployment Insurance (UI) systems for analysis. It aims to increase and improve the use of UI wage data through open-source code and supporting documentation. Users should navigate this repository alongside the Toolkit, which includes information on accessing, linking, and analyzing UI data, discussion on the benefits and limitations of the data, and additional resources on TANF and UI data.

This repository is intended for data users who are comfortable with coding and learning new programming languages but may be new to working with UI wage data. It includes: (1) R markdown files with common UI wage data quality checks, (2) synthetic UI wage data files with data quality issues that can be used with the R markdown files, (3) SQL code that can be used to process data and create outcomes, and (4) scripts to produce synthetic TANF cross-reference and UI wage data files that can be used with the SQL code.

This work is sponsored by the Office of Planning, Research, and Evaluation (OPRE) in collaboration with the Office of Family Assistance (OFA), in the Administration for Children and Families (ACF), U.S. Department of Health and Human Services (HHS). The views expressed in this publication do not necessarily reflect the views or policies of the Office of Planning, Research and Evaluation, the Administration for Children and Families, or the U.S. Department of Health and Human Services.

This repository is publicly accessible. All code is provided under the [MIT license](https://github.com/MDRCNY/TDC-UI/blob/main/LICENSE)

## Overview of the TDC-UI Repository Structure

The folders and files within this repository are prefixed with numbers to indicate the order we suggest following. Below is an overview of this sequential structure:

0.	**How to use this repository:** general instructions on using the GitHub platform and the code provided. If you are new to this repository, please start here!
    - Using GitHub online
    - Using the TDC-UI repository code 
1.	**Analysis Context:** a brief explanation on why we might conduct these kinds of analyses
2.	**Data quality checks:** a walk-through of common data quality issues and ways to address them
    - 00 Instructions
    - 01 Data quality checks
3.	**Creating your analysis file:** a series of SQL scripts to create simulated TANF and UI wage data, link the data, and restructure the data for analysis
    - 00 Instructions
    - 01 Create the simulated TANF and UI data
    - 02 Link the TANF and UI data
    - 03 Restructure the data to the person-quarter level
4.	**Creating your outcomes:** a series of SQL scripts to create common earnings and employment measures at the quarterly and annual level. Note that the number sequence here is continued from the previous folder, since you must create the analysis file before creating these outcomes.
    - 00 Instructions
    - 04 Calendar measures, quarterly level
    - 05 Calendar measures, annual level
    - 06 Relative measures, quarterly level
    - 07 Relative measures, annual level
    - 08 Employment spell measures
    - 09 Employer-based measures

The tdc_resources folder is a separate, standalone location for extra resources on TANF-data specific topics that are referenced in the toolkit.

This repository focuses on preparing UI wage data for analysis. For more information about how to prepare TANF data for analysis, see [the TANF data model developed by Chapin Hall](https://www.chapinhall.org/wp-content/uploads/IB_FSSDC_082917.pdf). 

## More About TDC and the UI Wage Data Toolkit
TDC is an initiative of ACF's TANF Data Innovations (TDI) project, launched in late 2017 to accelerate the use of TANF administrative data for program improvement and evidence building at the federal, state, and local level. TDI is sponsored by the Office of Planning, Research, and Evaluation (OPRE) in collaboration with the Office of Family Assistance (OFA), in the Administration for Children and Families (ACF), U.S. Department of Health and Human Services (HHS). MDRC is the lead organization and is joined by leading experts in public data governance and analysis, including Actionable Intelligence for Social Policy (AISP) at the University of Pennsylvania, the Coleridge Initiative, Chapin Hall, and Public Strategies.

The UI Wage Data Toolkit was developed through a collaborative process between TDC partners and local TANF agency staff, researchers, and policy experts. The toolkit builds on decades of experience acquiring, linking, processing, and analyzing UI wage data and represents a culmination of the joint energy and effort of these many contributors. It addresses a variety of common challenges, from approaching real or perceived legal barriers to data access and establishing a governance structure, to selecting a data linkage method and then analyzing the linked data to produce actionable insights.

**Questions? Comments? Contact us at <>.**

![TDC logo](tdc-logo.png)
