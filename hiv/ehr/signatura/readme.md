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

    - PRESCRIBING	RX_FREQUENCY	RDBMS Text(2)	SAS Char(2)		NO		01;02;03;04;05;06;07;08;10;11;NI;UN;OT	
      - 01=Every day; 02=Two times a day (BID); 03=Three times a day (TID); 04=Four times a day (QID); 05=Every morning; 06=Every afternoon; 07=Before meals; 08=After meals; 10=Every evening; 11=Once; NI=No information; UN=Unknown; OT=Other	Specified frequency of medication.	
    - PRESCRIBING	RX_PRN_FLAG	RDBMS Text(1)	SAS Char(1)		NO		Y;N
      - Y=Yes; N=No	Flag to indicate that all or part of medication frequency instructions includes “as needed.”

- QPD was computed for each patient-NDC pair (median) and a median of those medians was than abstracted per NDC (imperfect methodology due to analytical contrains of the platform)

- for later analysis QPD was rounded (e.g., value of 1 for values 0.75 to 1.25)


- QPD examples
  - Lopinavir/ritonavir QPD of 4
  - Raltegravir or darunavir QPD of 1


- VRDC definitions (from https://www.resdac.org/cms-data/files/pde/data-documentation)

  - DOS

This variable is contained in the following files: Part D Drug Event File 
Short SAS Name  DAYSSPLY
SAS Name DAYS_SUPLY_NUM
This field indicates the number of days' supply of medication dispensed by the pharmacy and consists of the amount the pharmacy enters for the prescription.
Comments: CMS accepts blanks in PDEs where NON-STANDARD FORMAT CODES is B, X, or P.
Source: PDE
https://www.resdac.org/cms-data/variables/days-supply  


  - Quantity

This variable is contained in the following files: Part D Drug Event File   
Short SAS Name QTYDSPNS  
SAS Name QTY_DSPNSD_NUM  
This field indicates the number of units, grams, mililiters, or other quantity dispensed in the current drug event.
If the PDE was for a compounded item, the quantity dispensed is the total of all ingredients. If the PDE was for a partial fill, the quantity is the total amount prescribed, not the portion covered by the partial fill.
Comments: The values for this field are highly variable and depend on the form of the drug that was dispensed (e.g., liquids or tablets).
Source: PDE
https://www.resdac.org/cms-data/variables/quantity-dispensed



### References

- https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4419961/  (analysis was restricted to single-ingredient drugs; used ATC DDD; no comparison of dispensation data to prescription data; no aggregation/analysis within a single patient)
