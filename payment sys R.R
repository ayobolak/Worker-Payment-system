set.seed(123)

generate_workers <- function(n = 400) {
  names <- c("John", "Jane", "Mary", "Mike", "Anne", "Bob", "Rose", "Tom", "Lily", "Chris")
  workers <- data.frame(
    id = 1:n,
    name = paste0(sample(names, n, replace = TRUE), 1:n),
    gender = sample(c("Male", "Female"), n, replace = TRUE),
    salary = sample(5000:35000, n, replace = TRUE),
    stringsAsFactors = FALSE
  )
  return(workers)
}

generate_payment_slips <- function(workers) {
  for (i in 1:nrow(workers)) {
    emp_level <- "Unclassified"
    salary <- workers$salary[i]
    gender <- workers$gender[i]
    
    if (salary > 10000 && salary < 20000) {
      emp_level <- "A1"
    }
    if (salary > 7500 && salary < 30000 && gender == "Female") {
      emp_level <- "A5-F"
    }
    
    cat(sprintf("Payment Slip - ID: %d, Name: %s, Gender: %s, Salary: $%d, Level: %s\n",
                workers$id[i], workers$name[i], gender, salary, emp_level))
  }
}

workers_list <- generate_workers()
generate_payment_slips(workers_list)
