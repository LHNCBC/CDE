# Aggregation of data dictionaries accross a large set of HIV studies

This repository is for paper titled: 'Analysis of data dictionary formats of HIV clinical trials'

## Abstract

Background: Efforts to define research Common Data Elements try to harmonize data collection across clinical studies. 

Objective: Our goal was to analyze the quality and usability of data dictionaries of HIV studies.

Methods: For the clinical domain of HIV, we searched data sharing platforms and acquired a set of 18 HIV related studies from which we analyzed 26 328 data elements. We identified existing standards for creating a data dictionary and reviewed their use. To facilitate aggregation across studies, we defined three types of data dictionary (data element, forms, and permissible values) and created a simple information model for each type. 

Results: An average study had 427 data elements (ranging from 46 elements to 9 945 elements). In terms of data type, 48.6% of data elements were string, 47.8% were numeric, 3.0% were date and 0.6% were date-time. No study in our sample explicitly declared a data element as a categorical variable and rather considered them either strings or numeric. Only for 61% of studies were we able to obtain permissible values. The majority of studies used CSV files to share a data dictionary while 22% of the studies used a non-computable, PDF format. All studies grouped their data elements. The average number of groups or forms per study was 24 (ranging between 2 and 124 groups/forms). An accurate and well formatted data dictionary facilitates error-free secondary analysis and can help with data de-identification. 

Conclusion: We saw features of data dictionaries that made them difficult to use and understand. This included multiple data dictionary files or non-machine-readable documents, data elements included in data but not in the dictionary or missing data types or descriptions. Building on experience with aggregating data elements across a large set of studies, we created a set of recommendations (called CONSIDER statement) that can guide optimal data sharing of future studies. 



# Files
S1- Aggregate of all analyzed data elements from a collection of HIV clinical studies
