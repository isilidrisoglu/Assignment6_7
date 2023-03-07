## What I did?
1. I created a makefile that makes a website to show all of our contents. 

2. Then, I created a local git repo in the same directory and copied the make file, as well as other files that include our content for the website to this repo. Commands for this: 
    git init 
    git add . ## Add all the files in this directory to git repo
    git git commit -m "initial commit" ## commit these changes
    git remote add origin https://github.com/isilidrisoglu/Assignment6_7.git ## To add git repo to github and make it public/share
    git branch -M main
    git push -u origin main

3. At this point when I checked my github, I realized the Website directory created by Makefile is in the form of directory and can't be opened. I realized this problem is caused by the fact that I cloned a github repo in the Makefile to create the template for Website. To solve this, I copied the files of this repo to a directory and changed Makefile to copy this directory under the directory Website (main target) it should create. 
    git add. 
    git commit -m "instead of cloning the template from git, created a directory which includes template to avoid adding it as a submodule"
    git push

4. Then, I needed to delete the earlier version of Website directory created by Makefile uses github clone command, and add the new version.
    rm -rf  Website
    git status
    git commit -m "Website dir removed."
    git push
    
    make
    git add Website 
    git status
    git commit -m "target directory, Website, is added" 
    git push


## Users guide to create the .html report
1. Clone the remote repo to your local device
    git clone https://github.com/isilidrisoglu/Assignment6_7.git

2. Open your terminal, using cd command go under Assignment6 directory and run the make file: 
    cd /user/yourpath/Assignment6
    make clean ## To first clean the existing Website directory which includes a pre-created html report. If you make changes in the content files, you need to use this command after you made the changes before updating the .html file.
    make 

