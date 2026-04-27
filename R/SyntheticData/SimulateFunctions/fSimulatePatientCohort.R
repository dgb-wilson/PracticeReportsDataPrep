fSimulatePatientCohort <- function(min_patients_per_prac,
                                   max_patients_per_prac,
                                   nb_practices){
  
  
  # sample the number of patients attending each practice
  patient_cohort <- fSimulatePracticePatientCount(min_patients_per_prac,
                                                  max_patients_per_prac,
                                                  nb_practices)
  
  # generate sex of each patient with a practice level random effect
  
  patient_cohort <- patient_cohort |> fSimulatePatientSex(nb_practices)
  
  # generate age of each patient with a fixed effect for sex and a random effect for PHN
  
  patient_cohort <- patient_cohort |> fSimulatePatientAge(nb_practices)
  
  return(patient_cohort)
}
