
#Extract data frames from a list of fixed widths files and return a list of data frames
#Parameters
#file.list: list of files
#col.width: fixed width of the columns
#col.number: number of the columns
#col.names: names of the columns 
fwf2df_list<-function(file.list, col.width, col.number, col.names=NULL){
	#variables init
	result.df<-list()
	i<-1
	
	for(fn in file.list){
		result.df[[i]]<-read_fwf(fn, fwf_widths(rep(col.width, col.number)))
		if(!is.null(col.names)) {
			names(result.df[[i]]) <-col.names	
		}
		#Strip suffix train.txt and test.txt from the column names
		names(result.df)[i]<-gsub("_(train|test).txt$", "", basename(fn))	
		i<-i+1
	}
	result.df	
}




#Get and clean data collected from the accelerometers of the Samsung Galaxy S 
run_analysis<-function(){
	#Libraries needed
	library(readr)
	library(plyr)
	
	#Constants
	sensor.measure.width	<- 16
	sensor.measure.reps		<- 128
	v561.measure.width		<- 16
	v561.measure.reps		<- 561
	
	#Variables
	remote.archive	<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
	local.archive	<-"gcdw4_ds.zip"
	summary.file 	<-"gcdw4_summary.txt"
	
	#Get archive
	#cat(sprintf("Downloading files from %s\n", remote.archive))
	#Download.file(remote.archive, local.archive, method="curl")
	#cat(sprintf("Unzipping %s in %s\n", local.archive, getwd()))
	if (file.exists(local.archive)){
		file.list<-unzip(local.archive)
	}else{
		stop("File [", local.archive, "] is missing from the current working directory.\nIt can be download from ",remote.archive)	
	}
	
	
	#Get the training and test data sets (accelerometer + gyroscope)
	train.sensor.dfs<- fwf2df_list(file.list[grep("Inertial.*train.txt$", file.list)], sensor.measure.width, sensor.measure.reps)
	test.sensor.dfs<- fwf2df_list(file.list[grep("Inertial.*test.txt$", file.list)], sensor.measure.width, sensor.measure.reps)
	
	#Get the list of features from the features file
	v561.features<-read_delim(file.list[grep("/features.txt$", file.list)], " ", col_names=F)
	
	#Get 561-feature vector for the training and test phases
	train.v561.df<-fwf2df_list(file.list[grep("X_train.txt$", file.list)], v561.measure.width, v561.measure.reps, v561.features[,2])
	test.v561.df<-fwf2df_list(file.list[grep("X_test.txt$", file.list)], v561.measure.width, v561.measure.reps, v561.features[,2])
	
	#Get the activity names mapping
	map.activ<-read_delim(file.list[grep("/activity_labels.txt$", file.list)], " ", col_names=F)
		
	#Get activities
	test.activ		<-read_lines(file.list[grep("/y_test.txt$", file.list)])
	train.activ		<-read_lines(file.list[grep("/y_train.txt$", file.list)])
	test.subjects	<-read_lines(file.list[grep("/subject_test.txt$", file.list)])
	train.subjects	<-read_lines(file.list[grep("/subject_train.txt$", file.list)])
		
	#Merge the training and test data to create a combined dataset	
	combined.train.df<-cbind(mode=rep("TRAIN",length(train.subjects)), subject=train.subjects, activity=train.activ, data.frame(sensors=train.sensor.dfs, features=train.v561.df))
	combined.test.df<-cbind(mode=rep("TEST",length(test.subjects)), subject=test.subjects, activity=test.activ, data.frame(sensors=test.sensor.dfs, features=test.v561.df))
	combined.all<-rbind(combined.train.df, combined.test.df)
	
	#Name activities in the data set using descriptive activity names
	combined.all$activities<-mapvalues(combined.all$activity, from=levels(combined.all$activity), to=map.activ[,2])
	
	#Only keep the mean and standard dev variables
	combined.all<-combined.all[grep("\\.mean\\.|\\.std\\.|mode|subject|activity", names(combined.all))]
	
	#Replace all occurences of more than 2 dots (.., ...) by a single dot
	names(combined.all)<-gsub("\\.{2,}", ".", names(combined.all))
	#Remove all the final dots
	names(combined.all)<-gsub("\\.$", "", names(combined.all))
	#Remove extra prefix from the variable names
	names(combined.all)<-gsub("^features.X.", "", names(combined.all))
	
	#Mean by subject and activity
	
	#Use a dataframe without testing mode to compute the summary of measurements
	summary.df<-aggregate(combined.all[,4:ncol(combined.all)], by=list(combined.all$subject, combined.all$activity), FUN=mean)	
	#Rename aggregated groups names by their original names
	names(summary.df)<-sub("Group.1", "subject", names(summary.df))
	names(summary.df)<-sub("Group.2", "activity", names(summary.df))
	if (file.exists(summary.file)){
		file.remove(summary.file)	
	}
	#print(str(summary.df))
	write.table(summary.df, file=summary.file, col.names=F)
	
	#summary.df
	combined.all
}
