#! /bin/bash

#Set if the branch "gh-pages"  exist or not.
GHPAGES_EXISTS= false

#Check if the branch gh-pages already exists. 
#If it exists, the global variable GHPAGES_EXISTS will be set to "true".
function check_with_ghpages_exist(){
    #Get all the branchs with the command "git branch". 
    #The value is retrieved as a string thanks to the use of the notation "$( git command )"
    BRANCHS=$(git branch)
    #loop trough the branchs names stored in the variable BRANCHS.
    for BRANCH in $BRANCHS
    do
        #Check if there is any branch with the name "gh-pages".
        if [ "$BRANCH" == "gh-pages" ]
        then
        #Set the GHPAGES_EXISTS to true.
        GHPAGES_EXISTS= true;
        fi
    done
}

#Checkout to the  branch gh-pages, if the global variable GHPAGES_EXISTS 
#is false, it will create the branch as well .
function checkout_branch_ghpages(){
    #variables used to store the git command "checkout". 
    CREATE_GHPAGES= git checkout -b gh-pages
    CHANGE_TO_GHPAGES= git checkout gh-pages
    #Test if the GHPAGES_EXISTS is true, if it's it will checkout without create a new branch.
    if [ $GHPAGES_EXISTS ]
    then
    #Checkout to the branch gh-pages
        echo "$CHANGE_TO_GHPAGES"
    else
    #Create and checkout to the branch gh-pages
        echo "$CREATE_GHPAGES"
    fi
}

#CHANGE_TO_SITE= cd _site;
#echo "$CHANGE_TO_SITE";
#echo $(dir);
#echo "${cd PWD%/*}"

#echo $(cd ../)
#check_with_ghpages_exist
#checkout_branch_ghpages

echo $(cd _site)
echo $(mkdir 2test)