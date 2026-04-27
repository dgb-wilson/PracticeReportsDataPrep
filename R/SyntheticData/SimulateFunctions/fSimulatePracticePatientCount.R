fSimulatePracticePatientCount <- function(min_patients_per_prac,
                                   max_patients_per_prac,
                                   nb_practices){
  

# sample the number of patients attending each practice
patients_per_prac <- sample(min_patients_per_prac:max_patients_per_prac, 
                            size = nb_practices, 
                            replace = TRUE)


practice_id <- rep(seq_along(patients_per_prac), patients_per_prac)

df <- data.frame(
  PRACTICE_ID = practice_id,
  PPN = sample(1:sum(patients_per_prac),
               replace = FALSE)
)

return(df)

}
