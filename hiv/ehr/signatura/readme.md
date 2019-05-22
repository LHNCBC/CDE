# EHR Data Element: patient instructions (signatura)

## Short description

Some medication-focused decision support logic may require structured representation of patient instructions (=signatura; abbreviated  as sig) specified in a prescription (e.g., “take every 8 hours”). As part of a larger project around common data elements (in HIV patients), we investigated methods of inferring signatura from 2016 Medicare pharmacy dispensation claims. This poster presentation is particularly relevant to CDS developers utilizing medication history from claims data as input. First, in aggregate population analysis, we analyzed QPD ratio (=quantity per day; quantity divided by days of supply [=DOS]) for drugs taken by HIV patients (206661 patients; 12108 NDCs). The project repository at https://github.com/lhncbc/CDE/tree/master/hiv/ehr/signatura contains additional methods and results. Second, for some drugs, we compared inferred signatura with separate HIV cohort for which we had Electronic Health Record data (in PCORNet model) obtained via collaboration with Great Plains Collaborative (utilizing PRN_FLAG column in ORDERING table).
Third, to evaluate data quality of days of supply field (assuming medication compliance and no stockpiling), we analyzed dispensation pattern over time: D(n+1) dispensation followed by approximately DOS(n) days after D(n). We concluded that inferring signatura is feasible for a subset of drugs and we piloted machine reasoning logic flagging irregular dispensation data.

## Additional information

- Claims data quality considerations
  - `quantity` data element (=DE) is considered more reliable
  - `days_of_suppply` DE may be less reliable
  - unit of `quantity` may be plain count (number of pills) or volume quantity (mL)

- PCORNet CDM allows representation of 

    - PRESCRIBING	RX_FREQUENCY	RDBMS Text(2)	SAS Char(2)		NO		01;02;03;04;05;06;07;08;10;11;NI;UN;OT	01=Every day; 02=Two times a day (BID); 03=Three times a day (TID); 04=Four times a day (QID); 05=Every morning; 06=Every afternoon; 07=Before meals; 08=After meals; 10=Every evening; 11=Once; NI=No information; UN=Unknown; OT=Other	Specified frequency of medication.	204
    - PRESCRIBING	RX_PRN_FLAG	RDBMS Text(1)	SAS Char(1)		NO		Y;N	Y=Yes; N=No	Flag to indicate that all or part of medication frequency instructions includes “as needed.”	205



- QDP examples
  - Lopinavir/ritonavir QDP of 4
  - Raltegravir or darunavir QDP of 1

### References

- https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4419961/
