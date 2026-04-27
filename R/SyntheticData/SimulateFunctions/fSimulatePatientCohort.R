fSimulatePatientCohort <- function(min_patients_per_prac,
                                   max_patients_per_prac,
                                   nb_practices){
  
  
  # sample the number of patients attending each practice
  patient_cohort <- fSimulatePracticePatientCount(min_patients_per_prac,
                                                  max_patients_per_prac,
                                                  nb_practices)
  
  return(patient_cohort)
}
