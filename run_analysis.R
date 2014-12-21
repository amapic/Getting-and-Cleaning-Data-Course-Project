
  #we add data set from train and test
  X_test<-read.table(file="X_test.txt",header=F,sep="")
  X_train<-read.table(file="X_train.txt",header=F,sep="")
  
  data<-rbind(X_train,X_test)
  
  
  features<-read.table(file="features.txt",header=F,sep="")
  colnames(data)<-features[,2]
  
  #we search the column containing mean() (and not meanFreq) and std()
  filter1<-subset(features, grepl("mean()", features[,2]) , drop = FALSE)
  filter2<-subset(filter1, !grepl("meanFreq", filter1[,2]) , drop = FALSE)
  
  filter3<-subset(features, grepl("std()", features[,2]) , drop = FALSE)
  datafilter<-rbind(filter2,filter3)
  #V1 is the name of the column containing measurement number
  datafilter<-datafilter[order(datafilter$V1),]
  
  #we keep in the original data only the column containing mean() and std()
  dataMeanStd<-data[,datafilter[,1]]
  colnames(dataMeanStd)<-datafilter[,2]
  
  #we add the subject data from train and test
  subject_train<-read.table(file="subject_train.txt",header=F,sep="")
  subject_test<-read.table(file="subject_test.txt",header=F,sep="")
  dataSubject<-rbind(subject_train,subject_test)
  colnames(dataSubject)<-c("Subject")
  
  #we add the activity data from train and test
  y_train<-read.table(file="y_train.txt",header=F,sep="")
  y_test<-read.table(file="y_test.txt",header=F,sep="")
  dataLabels<-rbind(y_train,y_test)
  colnames(dataLabels)<-c("Activity")
  
  datafinal<-cbind(dataSubject,dataLabels,dataMeanStd)
  
  #we replace the activity id by its name
  datafinal[,2][datafinal[,2]=="1"]<-"WALKING"
  datafinal[,2][datafinal[,2]=="2"]<-"WALKING_UPSTAIRS"
  datafinal[,2][datafinal[,2]=="3"]<-"WALKING_DOWNSTAIRS"
  datafinal[,2][datafinal[,2]=="4"]<-"SITTING"
  datafinal[,2][datafinal[,2]=="5"]<-"STANDING"
  datafinal[,2][datafinal[,2]=="6"]<-"LAYING"
  
  #We tidy up the column names with lower case and no parentheses nor -. We also correct the mistake with BodyBody
  colnames(datafinal)<-gsub("\\(","",colnames(datafinal))
  colnames(datafinal)<-gsub("\\)","",colnames(datafinal))
  colnames(datafinal)<-gsub("-","",colnames(datafinal))
  colnames(datafinal)<-gsub("BodyBody","Body",colnames(datafinal))
  colnames(datafinal)<-tolower(colnames(datafinal))
  #Point 6. we calculate the mean for each variable for each couple of subject and activity
  groupby <- datafinal %>% group_by(subject,activity)
  EachActivitySubjectMean<-groupby %>% summarise_each(funs(mean))
  
