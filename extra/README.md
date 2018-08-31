# CDE
This file shows definitions finalized by a Glossary subgroup of the Clinical Common Data Elements (CDE) Task Force of the NIH Scientific Data Council (SDC) 
(developed in 2017-2018 and finalized in Jan 2018


## Previusly standardized terms (not discussed by the group)
Data Element = Information that describes a piece of data to be collected in a study. The DE does not include the data themselves.

Common Data Element = A data element that is common to multiple data sets across different studies. Commonality may be intentional or unintentional; this Portal places emphasis on the intentional use of CDEs to improve data quality and promote data sharing. Certain types of CDEs are sometimes described.

Value Set = The set of possible values or responses.

Vocabulary =  A database of concepts with their corresponding definitions and codes that may include relationships between concepts


## New terms defined

### Form 

An ordered set of data elements (or groups of data elements), instructions and rules that support the collection of specific information. Example: PHQ-9



### Electronic Case Report Form (e-CRF) 

An auditable electronic record of information that generally is reported to the sponsor on each trial subject, according to a clinical investigation protocol. The eCRF enables clinical investigation data to be systematically captured, reviewed,managed, stored, analyzed, and reported.



### Questionnaire 

A series  of questions or items shown to a respondent in order to get answers  Example: Kansas City Cardiomyopathy Questionnaire



### Computer Adaptive Testing (CAT) Assessment 

A computer-based evaluation that adapts to the examinee's responses. Questions presented to the participant are drawn from a finite set of questions underlying the CAT. Example: PROMIS Physical Function CAT



### Precoordinated Term 

A single controlled terminology concept that provides a coded concept for entity that combines two (or more) more granular concepts. Example: ICD10CM concepts H54.42 (blind; left eye) and H54.41 (blind; right eye)



### Data Validation Restriction 

Limits that define what data should be entered and is considered valid. Example: date, number, positive number, pick list, free-text, expectation of using certain units, (specific example: weight can not be negative)



### Unique Data Element 

A Data Element that is unique to a single research study. Example: n/a (unique to a study)



### Skip Logic 

An algorithm that operates on prior data entries of a form and evaluates to true or false.If the evaluation results in an overall "true" condition, the specified DE or set of DEs is to be presented to the end user,  if the expression evaluates to false, the DE (or set of DEs) is not presented. When this is implemented in an electronic form it may be referred to as "display logic". May apply to a single data element, a group of data elements or a section, on a form. Example: Gender='male'



### DE Preferred Name 

DE preferred name is assigned by the DE steward. It is an attribute of a DE expressing what the DE is collecting data about. Example: Asthma Personal Medical History Yes or No Response


### Question text 

Question text is an attribute of a DE that is the sentence or text expressed so as to elicit information for a data element.  Example: How often do you have six or more drinks on one occasion? 



### Form Section 
An identifiable component of a form whose contained questions, instructions and rules share a common purpose, meaning or context. A section can contain other sections ("nesting").



### Form Instructions 

Text that provides direction in some aspect of the completion or submission of a section, question or form. 



### Steward 

Contact responsible for the maintenance of administrative information applicable to one or more items in a registry. Example: info@phenx.org



### Calculated CDE 

A type of data element derivation that can be computed using other data elements and/or an expression. Example: BMI   (kg/m^2)   for weight 66kg, height 1.76m -  the formula would be  66/(1.76^2) 