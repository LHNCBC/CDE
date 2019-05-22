# HIV registries


Curation of Data Elements (DEs) in long-term registries is typically higher compared to single time-limited interventional trials or observational studies.

Project goals:

- Identification of HIV registries
- Analysis of data dictionaries of HIV registries

Additional Information:

The five registries used were the Australian National HIV Registry, the Emory Center for AIDS Research (CFAR) Registry, the EuroSIDA Cohort, the California HIV/AIDS Case Registry and the Minnesota HIV Surveillance Registry.

We worked with registry data dictionaries (DDs) as opposed to trial DDs because we expect registries will have a higher level of DE curation. 

In order to relate data elements between registries we linked terms that were synonymous. Such examples include DEs for HIV exposure category, which was exposure in the Australia registry, Mode in EuroSIDA and clin-risk in the Minnesota Registry.

Some data elements from registries were closely related such as CD4 lymphocyte count and CD4 date.

We grouped related data elements by applying an EHR data convention. We derived EHR data conventions (for research DEs) by analyzing how Sentinel, PCORNet and OMOP models (models used extensively to organize healthcare Real World Data (RWD)) combine related DEs into a relational database (e.g., viral load and viral load date are combined into a single data row).

Examples of DEs that were removed, as they were country specific to Australia include indigenous status and year of arrival in Australia.

With the Australian specific DEs removed, such as indigenous status and year of arrival in Australia, there were 37 benchmark variables analyzed. When EHR conventions were applied there were 22 benchmark DEs. 16 CDEs further reduced to 12 when we applied EHR data conventions. (viral load and date of viral load combined). 

The DEs found in all five registries were sex, date of birth, clinic identifier, date of HIV diagnosis, Viral load and CD4 with dates, date of last contact and date of death.

The DEs found in four registries were name (first and last), country of birth, current residence information and HIV exposure category.

We defined EAV data element as a data element that is organized as an entity-attribute-value approach such as lab data. Of the five registries, only the Emory CFAR registry was in EAV form and used popular vocabularies such as LOINC, ICD9 and National Drug Codes. Only the EuroSIDA Cohort was in complex form with EHR conventions applied, while the other three were all completely separated lower level DEs.

Limitations: Our analysis is limited by using a small sample of HIV registries and by using the smallest registry as a benchmark. This benchmark was chosen due to defining a CDE as a DE present in all registries and the smallest registry is the limiting factor.

File [registry_master_post.xlsx](registry_master_post.xlsx) has additional information that includes four tabs with the first tab (Registries) being the list of registries, the second tab (All DEs) is the complete list of the 1120 DEs, the third tab (DE counts) is the comparison of whether a DE from the benchmark is in the other registries and the fourth tab (DE map) is the semantic mapping of synnonomous terms for the benchmark DEs.
