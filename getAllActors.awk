#Get the list of all movies an actor has acted in

/(.+)((\t)+)(.+)/{
if($0 ~ "((.+)\t(.+))"){
split($0,arr,"\t")
print arr[1];
}
else if ($0 ~ "(.+)(\t\t)(.+)"){
split($0,arr,"\t\t")
print arr[1];
} 
else if ($0 ~ "(.+)(\t\t\t)(.+)"){
split($0,arr,"\t\t\t")
print arr[1];
}
}
