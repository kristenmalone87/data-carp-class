## Assn 9 ##

#house elf analysis with dr. granger

get.data<-function(){
  data<-read.csv("surveys.csv")
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

elves<-read.csv("houseelf_earlength_dna_data1.csv", header=TRUE)
