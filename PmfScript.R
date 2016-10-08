# This file imports two vectors from two different files
# Generates a new vector
# Computes Probability Mass Function (PMF)
# Plots the PMF 
######################################
# INSTRUCTIONS:
#to run use source("name_file.R")
#####################################

#verify current directory
getwd()
#clean the workspace
rm(list=ls())
#import the data as a matrix
data <-as.matrix(read.table("filename.txt", dec=",", sep="\t"))
#first N values as a vector
N=150
all_opt150<-data[1:N,1]
alfa_data <-as.matrix(read.table("filename2.txt", dec=",", sep="\t"))
alfa_values<-alfa_data[1:N,2]
gap_alfa<-100-((alfa_values/alfa_opt150)*100)
gap_alfa[is.nan(gap_alfa)] <- 0
#PMF plot --> hints: http://www.math.utah.edu/~treiberg/M3073BinPlot.pdf
pmf_alfa<-vector()
for(i in 1:100){ 
	pmf_alfa[i]<-sum(gap_alfa>=(i-1) & gap_alfa<i);
	}
pmf_alfa<-pmf_alfa/sum(pmf_alfa)
DD<-1:length(pmf_alfa)
plot(DD,pmf_alfa,type="h",col=2,main="PMF GAP",xlab="x",ylab="p(x)")





