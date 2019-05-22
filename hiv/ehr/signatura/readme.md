# EHR Data Element: patient instructions (signatura)

## Short description

Some medication-focused decision support logic may require structured representation of patient instructions (=signatura; abbreviated  as sig) specified in a prescription (e.g., “take every 8 hours”). As part of a larger project around common data elements (in HIV patients), we investigated methods of inferring signatura from 2016 Medicare pharmacy dispensation claims. This poster presentation is particularly relevant to CDS developers utilizing medication history from claims data as input. First, in aggregate population analysis, we analyzed QPD ratio (=quantity per day; quantity divided by days of supply [=DOS]) for drugs taken by HIV patients (206661 patients; 12108 NDCs). The project repository at https://github.com/lhncbc/CDE/tree/master/hiv/ehr/signatura contains additional methods and results. Second, for some drugs, we compared inferred signatura with separate HIV cohort for which we had Electronic Health Record data (in PCORNet model) obtained via collaboration with Great Plains Collaborative (utilizing PRN_FLAG column in ORDERING table).
Third, to evaluate data quality of days of supply field (assuming medication compliance and no stockpiling), we analyzed dispensation pattern over time: D(n+1) dispensation followed by approximately DOS(n) days after D(n). We concluded that inferring signatura is feasible for a subset of drugs and we piloted machine reasoning logic flagging irregular dispensation data.

## Additional information

- Lopinavir/ritonavir QDP of 4
- Raltegravir or darunavir QDP of 1

### References

- https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4419961/
