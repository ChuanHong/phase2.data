\name{data_clean}
\alias{data_clean}
\title{Prepare cleaned data for phase2 analysis}
\description{
Prepare cleaned data for phase2 analysis}
\usage{
data_clean(code.dict,Phase2LocalPatientClinicalCourse, Phase2LocalPatientObservations, Phase2LocalPatientSummary, nm.event, admission.date.setting)
}
\arguments{
  \item{code.dict}{the code dictionary for lab loinc codes}
  \item{Phase2LocalPatientClinicalCourse}{the csv data file for Phase2LocalPatientClinicalCourse}
  \item{Phase2LocalPatientObservations}{the csv data file for Phase2LocalPatientObservations}
  \item{Phase2LocalPatientSummary}{the csv data file for Phase2LocalPatientSummary}
  \item{nm.event}{the event, choosing from "severe", "deceased", or "severedeceased"}
  \item{admission.date.setting}{choosing from "early", "late", or "all"}
}

\author{Chuan Hong}

\examples{
library("phase2.data")
data(Phase2LocalPatientClinicalCourse)
data(Phase2LocalPatientObservations)
data(Phase2LocalPatientSummary)
data(code.dict)
dat.analysis=data_clean(code.dict, Phase2LocalPatientClinicalCourse, Phase2LocalPatientObservations, Phase2LocalPatientSummary, nm.event="severedeceased", admission.date.setting="all")
}

\keyword{data processing}
