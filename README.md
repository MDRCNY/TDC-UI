# TANF Data Collaborative UI Wage Data Toolkit

This GitHub repository accompanies the [TANF Data Collaborative (TDC) UI Wage Data Toolkit](https://www.mdrc.org/publication/expanding-tanf-program-insights) and shares resources to prepare employment data from state Unemployment Insurance (UI) systems for analysis. It aims to increase and improve the use of UI wage data among program administrators and researchers through open-source code. Users should navigate this repository alongside the Toolkit, which includes information on accessing, linking, and analyzing UI wage data, discussion on the benefits and limitations of the data, and additional resources on TANF and UI wage data.

This repository is intended for data users who are comfortable with coding and learning new programming languages but may be new to working with UI wage data. It includes: (1) R markdown files with common UI wage data quality checks, (2) synthetic UI wage data files with data quality issues that can be used with the R markdown files, (3) SQL code that can be used to process data and create outcomes, and (4) scripts to produce synthetic TANF cross-reference and UI wage data files that can be used with the SQL code.

This work is sponsored by the Office of Planning, Research, and Evaluation (OPRE) in collaboration with the Office of Family Assistance (OFA), in the Administration for Children and Families (ACF), U.S. Department of Health and Human Services (HHS). The views expressed in this publication do not necessarily reflect the views or policies of the Office of Planning, Research and Evaluation, the Administration for Children and Families, or the U.S. Department of Health and Human Services.

This repository is publicly accessible. All code is provided under the [MIT license](https://github.com/MDRCNY/TDC-UI/blob/main/LICENSE)

## Overview of the TDC-UI Repository Structure

The folders and files within this repository are prefixed with numbers to indicate the order we suggest following. Below is an overview of this sequential structure:

0.	**[How to use this repository](https://github.com/MDRCNY/TDC-UI/tree/main/00_how_to_use_this_repository):** general instructions on using the GitHub platform and the code provided. If you are new to this repository, please start here!
    - [01 Using the TDC-UI repository code](https://github.com/MDRCNY/TDC-UI/blob/main/00_how_to_use_this_repository/01_using_the_tdc_ui_code.md) 
    - [02 A Note on the Synthetic Data Used in This Repository](https://github.com/MDRCNY/TDC-UI/blob/main/00_how_to_use_this_repository/02_synthetic_data_notes.md)
1.	**[Analysis Context](https://github.com/MDRCNY/TDC-UI/tree/main/01_analysis_context):** a brief explanation on why we might conduct these kinds of analyses
2.	**[Data quality checks](https://github.com/MDRCNY/TDC-UI/tree/main/02_data_quality_checks):** a walk-through of common data quality issues and ways to address them
    - [00 Instructions](https://github.com/MDRCNY/TDC-UI/blob/main/02_data_quality_checks/00_instructions.md)
    - [01 Data quality checks](https://github.com/MDRCNY/TDC-UI/blob/main/02_data_quality_checks/01_data_quality_checks.Rmd)
3.	**[Creating your analysis file](https://github.com/MDRCNY/TDC-UI/tree/main/03_create_analysis_file):** a series of SQL scripts to create simulated TANF and UI wage data, link the data, and restructure the data for analysis
    - [00 Instructions](https://github.com/MDRCNY/TDC-UI/blob/main/03_create_analysis_file/00_instructions.md)
    - [01 Create the simulated TANF and UI data](https://github.com/MDRCNY/TDC-UI/blob/main/03_create_analysis_file/01_create_simulated_data.sql)
    - [02 Link the TANF and UI data](https://github.com/MDRCNY/TDC-UI/blob/main/03_create_analysis_file/02_link_TANF_UI.ipynb)
    - [03 Restructure the data to the person-quarter level](https://github.com/MDRCNY/TDC-UI/blob/main/03_create_analysis_file/03_restructure_person_quarter.ipynb)
4.	**[Creating your outcomes](https://github.com/MDRCNY/TDC-UI/tree/main/04_create_outcomes):** a series of SQL scripts to create common earnings and employment measures at the quarterly and annual level. Note that the number sequence here is continued from the previous folder, since you must create the analysis file before creating these outcomes.
    - [00 Instructions](https://github.com/MDRCNY/TDC-UI/blob/main/04_create_outcomes/00_instructions.md)
    - [04 Calendar measures, quarterly level](https://github.com/MDRCNY/TDC-UI/blob/main/04_create_outcomes/04_calendar_measures_qtr.ipynb)
    - [05 Calendar measures, annual level](https://github.com/MDRCNY/TDC-UI/blob/main/04_create_outcomes/05_calendar_measures_annual.ipynb)
    - [06 Relative measures, quarterly level](https://github.com/MDRCNY/TDC-UI/blob/main/04_create_outcomes/06_relative_measures_qtr.ipynb)
    - [07 Relative measures, annual level](https://github.com/MDRCNY/TDC-UI/blob/main/04_create_outcomes/07_relative_measures_annual.ipynb)
    - [08 Employment spell measures](https://github.com/MDRCNY/TDC-UI/blob/main/04_create_outcomes/08_employment_spell_measures.ipynb)
    - [09 Employer-based measures](https://github.com/MDRCNY/TDC-UI/blob/main/04_create_outcomes/09_employer_based_measures.ipynb)

The [tdc_resources](https://github.com/MDRCNY/TDC-UI/tree/main/tdc_resources) folder is a separate, standalone location for extra resources on TANF-data specific topics that are referenced in the toolkit.

This repository focuses on preparing UI wage data for analysis. For more information about how to prepare TANF data for analysis, see [the TANF data model developed by Chapin Hall](https://www.chapinhall.org/wp-content/uploads/IB_FSSDC_082917.pdf). 

## More About TDC and the UI Wage Data Toolkit
TDC is an initiative of ACF's TANF Data Innovations (TDI) project, launched in late 2017 to accelerate the use of TANF administrative data for program improvement and evidence building at the federal, state, and local level. TDI is sponsored by the Office of Planning, Research, and Evaluation (OPRE) in collaboration with the Office of Family Assistance (OFA), in the Administration for Children and Families (ACF), U.S. Department of Health and Human Services (HHS). MDRC is the lead organization and is joined by leading experts in public data governance and analysis, including Actionable Intelligence for Social Policy (AISP) at the University of Pennsylvania, the Coleridge Initiative, Chapin Hall, and Public Strategies.

The UI Wage Data Toolkit was developed through a collaborative process between TDC partners and local TANF agency staff, researchers, and policy experts. The toolkit builds on decades of experience acquiring, linking, processing, and analyzing UI wage data and represents a culmination of the joint energy and effort of these many contributors. It addresses a variety of common challenges, from approaching real or perceived legal barriers to data access and establishing a governance structure, to selecting a data linkage method and then analyzing the linked data to produce actionable insights.

## Acknowledgements
The code in this repository was produced by staff at MDRC, specifically Electra Small, Zarni Htet, and Dannia Guzman. Johanna Walter provided a detailed review, and Camille Preel-Dumas, Anumita Jain, and Edith Yang created and managed the TDC-UI wage data repository.

If you have any questions about the code or other repository materials, please email cdicode@mdrc.org and an MDRC staff member will be able to assist you. 

![TDC logo](tdc-logo.png)
