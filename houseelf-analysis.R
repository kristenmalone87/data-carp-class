## Assn 9 ##
#send link to git hub repository to Andrew

library(stringr)

#Problem 2
#house elf analysis with dr. granger

#Problem 3
get.data<-function(){
  data<-read.csv("houseelf_earlength_dna_data.csv")
  return(data)
}

get_size_class<-function(weight){
  if (weight>50){
    size_class<-"large"
  }
  else{
    size_class<-"small"
  }
  return(size_class)
}

#Problem 4
elves<-read.csv("houseelf_earlength_dna_data1.csv", header=TRUE)

add_size_class<-function(db){
  data_w_size_class<-
    df %>%
    na.omit() %>%
    rowwise() %>%
    mutate(size_class=get_size_class(weight,50))
  return(data_w_size_class)
}

#Problem 6
gc_content_fnc<-function(sequence){
  Gs<-str_count(sequence, "G")
  Cs<-str_count(sequence,"C")
  seq_length<-str_length(sequence)
  gc_content<-((Gs+Cs)/seq_length)*100
  return(gc_content)
}

print(gc_content_fnc(elves$dnaseq))

#Problem 7 - pull Dr. White's code from github

get_size_class <- function(ear_length){
  # Calculate the size class for one or more earth lengths
  ear_lengths <- ifelse(ear_length > 10, "large", "small")
  return(ear_lengths)
}
get_size_class(elves$earlength)

#apply both functions (ear length size class and gc content) to all individuals
indiv<-elves$id
for (i in 1:nrow(elves)){
  size_class[i]<-get_size_class(elves$earlength[i])
  gc_content[i]<-gc_content_fnc(elves$dnaseq[i])
  out<-data.frame(elves$id, size_class, gc_content)
}
out
#create csv with data from above functions
write.csv(out,"elves_size_class_gc_content")
