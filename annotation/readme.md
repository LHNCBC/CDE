# Introduction

In recent years, Common Data Elements (CDEs) have been developed to unify data collection in clinical studies. Since 2015, a CDE repository maintained by the National Library of Medicine allows retrieval of CDEs across several initiatives. With wider availability of de-identified patient-level clinical trials’ data across research studies, organizing data elements using a hierarchical system can improve ability of researchers to discover relevant data to re-use.




# Methods
- Pilot study (single annotator per CDE)
- Final study (multiple annotators, formally measure aggreemnt (e.g., kappa statistic))

# Relevant Links 
 - SNOMED International Confluece Site dicussion on CDE annotation https://confluence.ihtsdotools.org/questions/38246454/creating-post-coordinated-expressions-the-date-the-sleep-disorder-started  (requires creating a free site account)
 - IHTSDO. SNOMED CT Compositional Grammar http://snomed.org/scg, 2014.
 - Observables and investigation procedures redesign https://confluence.ihtsdotools.org/display/OBSERVABLE/Observables+Inception-Elaboration+document
- This paper describes the context of Common Data Elements. https://www.ncbi.nlm.nih.gov/pubmed/27311638
- NIH CDE repository https://cde.nlm.nih.gov
- PhenX and LOINC https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3780790
- ISO 11179 standard https://en.wikipedia.org/wiki/ISO/IEC_11179




# Examples
## Numeric
### Whole numbers


-	Age when (How old was you child when he/she completely stopped breast-feeding or being fed breast milk
-	Age
-	Date time (Year inserted permanent pacemaker)
-	Count (Number of push-ups completed; How many natural sons have you had who lived to be at least 10 years old, including those who are still living? By natural, I mean those who you (biologically fathered/gave birth to.)
-	Quantity (in the past 30 days, on how many days did you drink one or more drinks of an alcoholic beverage)
-	Duration (Time to complete entire 1 mile walk; About how long have you been in the United States?)
-	Length (arm span measured in centimeter, first measurement)



# Abstract text

Title: Use of SNOMED CT Compositional Grammar to Annotate Human Clinical Trials Data Elements  

Presenter: Vojtech Huser, National Library of Medicine, NIH  

Audience  

Clinical researchers, SNOMED CT implementers, SNOMED CT users  

Objectives  

Introduce clinical research standardization initiatives defining research Common Data Elements (CDEs). Demonstrate examples of annotation of research data using SNOMED CT terms and SNOMED CT Compositional Grammar.   

Abstract  

SNOMED CT is a clinical terminology that allows data standardization predominantly in the context of routine health care delivery. In light of greater adoption of standards to exchange routine health care data, several analogous efforts are emerging for data collection in human clinical interventional trials or observational studies under the umbrella of research Common Data Elements (CDEs). Examples of CDE initiatives are PhenX toolkit or Patient-Reported Outcomes Measurement Information System (PROMIS). Research data elements are typically out of scope for inclusion in SNOMED CT due to predominantly research use context; however, in some cases, may contain overlapping concepts (clinical researchers use the term data element). An example of a research CDE is: “Form: PhenX female reproductive history; Question: On what date did the 2nd pregnancy end?”) Since 2015, a CDE repository maintained by the National Library of Medicine allows retrieval of CDEs across 12 CDE initiatives. With wider availability of de-identified patient-level clinical trials’ data (via newly emerging trial results platforms, such as Data Share by National Institute of Drug Abuse), organizing research CDEs by annotation with SNOMED CT concepts can improve ability of researchers to discover relevant data to re-use. We present our pilot work on annotation of CDEs using a framework that is inspired by the SNOMED CT compositional grammar.[1] Methods: In a pilot mode, we annotated thee sources of research CDEs: (1) PhenX data elements developed by two institutes at US National Institutes of Health (NIH) with 564 forms and 22705 elements; (2) CRF library published by Elli Lilly with 914 forms and 28310 elements; and (3) a subset of REDCap Consortium library with 10 forms and 879 elements). From an informatics and statistical perceptive, we structured all CDEs by their data type, such as boolean, date, text or number. To evaluate mapping quality, we classified mapping between the CDE and SNOMED CT Expression into classes of exact match, partial match and no match. Preliminary results: As of May 2017, three experts annotated 786 CDEs using SNOMED CT, made several new concept submissions (accepted) and produced draft guidelines for CDE annotation using SNOMED CT. Our poster presentation will present data on match accuracy and strengths and limitations of SNOMED CT compositional grammar identified. 

References  

1.	CDE Annotation project repository. https://github.com/lhncbc/CDE 

