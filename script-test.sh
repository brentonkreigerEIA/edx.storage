#!/bin/bash

#Find and save date variables
S3_BUCKET="eiaeducation4testing"

#current_date=$(date +%Y-%m-%d)
older_date=$(date --date='180 days ago' +%Y%m%dT%H%M%S)
test_date="20200422T001808"

aws s3 rm s3://$S3_BUCKET/openedx-data-${test_date}.tgz
echo "finished pruning the s3 bucket"

#ARCHIVE

#echo "$older_date older date"
#echo "$current_date current date"

#if [[ "$olderdate" < "$current_date" ]] ;
#then
#	echo "correct"
#fi
