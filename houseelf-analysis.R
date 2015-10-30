## Assn 9 ##

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
}

print(gc_content_fnc(elves$dnaseq))


