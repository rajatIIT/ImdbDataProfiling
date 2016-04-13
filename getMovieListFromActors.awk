#Get the list of all movies an actor has acted in
BEGIN{
name="'Casper' Brown, Jesse";
found=0;
}
# any no. of words, then three tabs and then any number of words
# print the list of all movies for that particular actor
# if a name patterns comes, count=1;
# then all the words of format (\t)*(.*) are expected. we need to extract these lines. 
# whenever firs line by format (.+)(\t)*(.*) arrives, we set the flag off. 

//{
if($0 ~ "(.*)name(.*)"){
if(found==0){
found=1;
}
}
}

/([a-zA-Z0-9]+)(\t)*(.+)/{
# if flag is set, turn it off.
if(found==1 && ($0 !~ "\t\t\t(.+)" )){
found=0;
# DEBUG
#print "flag off at";
#print;
}
}

/(.*)((\t)+)(.+)/{
if($0 ~ "((.*)\t(.+))"){
if(found==1){
split($0,arr,"\t")
#print arr[0];
print;
}
}
else if ($0 ~ "(.*)(\t\t)(.+)"){
if(found==1){
split($0,arr,"\t\t")
#print arr[0];
print;
}
}
else if ($0 ~ "(.*)(\t\t\t)(.+)"){
if(found==1){
split($0,arr,"\t\t\t")
#print arr[0];
print;
}
}
}





//{
if($0 ~ name){
print;
if(found==0)
found=1;
else if(found==1)
found=0;
}
}
