# Data Quality of Rx data

Data Quality Assesment of Rx data - supplemental files
This complements an AMIA submission. Files are explaind in the text of the submission and below.

# Files

## S1

knowledge base  
One row per clinical drug (RxNorm)  
File lists rule thresholds for each rule.  

## S2

Selected results for individual clinical drugs from a claims database.  
Each row is for one clinical drug.  
File can be used to find drugs with most rule violations.  

## S1b

Same as S1 but expands each line in S1 to NDC level. This file can be used by PCORNet or Sentinel if their drug data is on NDC level and not mapped to RxNorm (as target terminology).
Because of limit of 100MB (by Github.com), the file is zipped. It is a single CSV file. Can be read by `read_csv(url-of-zipped-file)`
Use the file marked as preview to see the first few rows of the file to get a sense of what it contains.
