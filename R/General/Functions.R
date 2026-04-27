# function to disconnect from the database
disconnectdb <- function(db){
  dbDisconnect(db, shutdown=T)
}

# function to connect to the database
connectdb <- function(){
  dbcon <- DBI::dbConnect(
    duckdb::duckdb(),
    "Data/PracticeReportData.duckdb"
  )
  
  
  return(dbcon)
}