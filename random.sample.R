random.sample <- function(samplesize=0.5,data,seed=NULL,replace = FALSE, prob = NULL){
  ##Arguments
  #samplesize
  #data
  #seed
  #replace
  #prob
  size = floor(samplesize * nrow(data))
  set.seed(seed)
  index = sample(x = seq_len(nrow(data)),size = size,replace = replace, prob = prob)
  data.train <<- data[index, ]
  data.test <<- data[-index, ]
}