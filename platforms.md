# Clinical Study Data Request
link: https://www.clinicalstudydatarequest.com/SearchAllPostings.aspx
studies: 3145 as of 2019-11-07
- separate DUA for each study (platform process and study specific process)

# Vivli


# Project Data Sphere
- some studies use a standard format for IPV (standard: CDISC SDTM or CDISD ADAM)
- data from control arms of studies are not requestwalled (instant approval)

# NIH: BioLINCC
link: https://biolincc.nhlbi.nih.gov/studies/
studies:
- data dictionaries are standardized (format is PDF)
- training datasets
- one study does not require requestor IRB

# NIH: NIDA Data Share
- no login
- request process provides the user with data use terms and is based on acknowledgement of these terms (instant access to the requested data)

# NIH: dbGaP
- general research use category is defined
- standardized format for consent (consent is in HTML format as a platform added value)


# Glossary
### Data re-using researcher (DRR)
Researcher doing secondary analysis
### Requestwall
Mechanism where an action is not instant but requires making a request. Analogous to paywall. Request approval may be automatic and instant or may invovle checking ethical approval, credentials, organization signing official signature
### Signing official
Representative of an organization. Applicable to a situation where DRR signature is not sufficient. For example, ensure that organization plays a role is supervising DRR
### Batch request
ability to request mutliple studies in a single request
### Tethered analytical system (TAS)
An analytical platform that is tighly linked with a data sharing platform. Vivli and ProjectDataSphere provide a TAS

### data depositor
PI or research team who is sharing data on a platform. Data depositor may have to pay to use a platform.
### data recipient
DRR who is receiving the data. Data recipient may have to pay to use a tethered analytical platform and data use may be restricted to such tethered analytical system.


# Data Elements

## Groupings of data elements

### Axioms:
 - Data elements can be closely related. E.g., month of birth and year of birth are closely related. Should they be two elements or one with sub-components. 
 - Similarities in modelling data by Common Data Models (e.g., OMOP, PCORNet, Sentinel) and FHIR standard provide binding knowledge on what should be grouped and how  (e.g., eGFR date and eGRF value). This is called EHR data convention.
 -
 
### Grouped data elements
Two data elements are grouped if they appear on the same row in a common data model that uses a relational database. If a study has split a grouped data elements into two independent elements, it is not considered compliant with `Good Clinical Data Practice`.
