# 1. Install the package
```R
library(devtools)
install_github("ChuanHong/phase2.data")
```
# 2. Data processing
```R
library("phase2.data")
data(code.dict)
# need to specify the input directly
# dir.input: the input directory (e.g.,"/Users/") is where you put the phase1.1 data (e.g., ClinicalCourse-RIVHS.csv)

Phase2LocalPatientClinicalCourse=read.csv(paste0(dir.input, "Phase2LocalPatientClinicalCourse.csv"))
Phase2LocalPatientObservations=read.csv(paste0(dir.input, "Phase2LocalPatientObservations.csv"))
Phase2LocalPatientSummary=read.csv(paste0(dir.input, "Phase2LocalPatientSummary.csv"))

dat.analysis=data_clean(code.dict, Phase2LocalPatientClinicalCourse, Phase2LocalPatientObservations, Phase2LocalPatientSummary, nm.event="severedeceased", admission.date.setting="all")
```
