#!/bin/bash

#This script checks for changes in files and, if there are any changes, sends an email

#Frequency of search
frequency="-5"

#Directory to search
searchDir=~/var/run/apple/prod

#Get date and time
changeDate=$(date)

#email address for mailing the results
sendToEmail=splace@us.ibm.com

#Test if files have been changed
changes="$(find $searchDir -cmin $frequency -type f | wc -l)"

if [ $changes -gt 0 ]
    then
    	#Gets email subject and sends message
    	emailSubject="Call at $changes on $changeDate"
        mail -s "$emailSubject" $sendToEmail
        
    else    
        #else nothing happens
        exit
fi
