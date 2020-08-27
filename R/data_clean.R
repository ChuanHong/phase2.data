data_clean=function(code.dict,Phase2LocalPatientClinicalCourse, Phase2LocalPatientObservations, Phase2LocalPatientSummary, nm.event="severedeceased", admission.date.setting="all"){
    dat.surv.raw=Phase2LocalPatientClinicalCourse
    dat.x.raw=Phase2LocalPatientObservations
    dat.dem.raw=Phase2LocalPatientSummary
    dat.surv.raw$severedeceased=ifelse((dat.surv.raw$severe+dat.surv.raw$deceased)>0,1,0)
    
  if(admission.date.setting=="all"){
  admission.date.range=c("2020-03-11","2020-07-30")}
  if(admission.date.setting=="early"){
  admission.date.range=c("2020-03-11","2020-04-30")}    
  if(admission.date.setting=="late"){
  admission.date.range=c("2020-05-01","2020-07-30")}       

  patient.keep=unique(dat.surv.raw[which(dat.surv.raw$days_since_admission==0 & 
                                  as.Date(dat.surv.raw$calendar_date,"%Y-%m-%d")<=as.Date(admission.date.range[2], "%Y-%m-%d") &
                                  as.Date(dat.surv.raw$calendar_date,"%Y-%m-%d")>=as.Date(admission.date.range[1], "%Y-%m-%d")),"patient_num"
                                  ])
  dat.analysis=data_analysis_clean(code.dict, nm.event, dat.surv.raw, dat.x.raw, dat.dem.raw, nm.patient_num="patient_num", nm.days_since_admission="days_since_admission", nm.value="value", patient.keep)
  dat.analysis
  }



