#' Fast chi-square value computation

fchisq_val <- function(tab1, tab2, row_sum, n) {
  tmp <- cbind(tab1, tab2)
  col_sum <- colSums(tmp)
  E <- outer(row_sum, col_sum, "*") / n
  sum((tmp - E)^2 / E)
}



#' Merges uces into uc according to minimum uc size
#' 
#' `rainette_uc_index` docvar
#' 
#' @param dtm dtm of uces
#' @param min_uc_size minimum number of forms by uc
#' 
#' @return the original dtm with a new `rainette_uc_id` docvar.

compute_uc <- function(dtm, min_uc_size = 10) {
  ## Size of each uce
  terms_by_uce <- rowSums(dtm)
  if (any(terms_by_uce < min_uc_size)) {
    index <- 1
    uc_id <- docvars(dtm)$rainette_uce_id
    while (index < length(terms_by_uce)) {
      current_size <- terms_by_uce[index]
      grouping_index <- index
      ## While current uc size is smaller than min, regroup with following uce
      while(current_size < min_uc_size) {
        grouping_index <- grouping_index + 1
        if (grouping_index > length(terms_by_uce)) {
          stop("can't compute uc with respect to min_uc_size")
        }
        current_size <- current_size + terms_by_uce[grouping_index]
        uc_id[grouping_index] <- index
      }
      index <- grouping_index + 1
    }
    ## Add computed uc ids to docvars
    docvars(dtm)$rainette_uc_id <- uc_id
  }
  
  return(dtm)
}
