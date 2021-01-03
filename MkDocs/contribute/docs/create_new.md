# Create new lab

Before starting to add a new lab, create a branch for the changes following the same process as under [Add content](../add_content).





# THIS IS A COPY OF ADD CONTENT<br>WAIT FOR AN UPDATE ON THIS CHAPTER

Before starting to add or change existing content, create a branch for the changes.

You can get a brief introduction to the use of branches here:<br>
[https://github.com/Kunena/Kunena-Forum/wiki/Create-a-new-branch-with-git-and-manage-branches](https://github.com/Kunena/Kunena-Forum/wiki/Create-a-new-branch-with-git-and-manage-branches)

Basically you need to do the following to create a new branch locally and on the Github repo:

    $ git pull
    $ git checkout -b [name_of_your_new_branch]
    $ git push origin [name_of_your_new_branch]
    
Make some changes in the markdown files.<br>
In the terminal navigate to the root of this git repo and execute the build script:

    $ ./build_all_mkdocs.sh

Open the browser and navigate to [http://localhost:8080/](http://localhost:8080/) in order to verify that your changes look as expected. Hint: press control-c to stop the web server and get back to the prompt.
<br><br>
When you are satisfied with your contribution take a look at the changes you have created in git:

    $ git status

Add those files to git:

    $ git add .

Commit the changes:

    $ git commit -m "Write a descriptive message of your changes"

Push the changes to the Github branch:

    $ git push origin [name_of_your_new_branch]

Go to the Github repository [https://github.com/IBM/monitor-hands-on-lab](https://github.com/IBM/monitor-hands-on-lab)

Select your branch in the dropdown box:
![Select branch](/img/contribute/add_select_branch.png)

Create a Pull request:
![Select Pull request](/img/contribute/add_select_pull_request.png)

Give it a title and description. Hit the `Create pull request` button.

Ask Carlos Ferreia (carlos.ferreira1@ibm.com) to review and accept your Pull Request.

Clean up by deleting the local and remote branch when your Pull request has been accepted and your commits are added to the master branch.

    $ git checkout master
    $ git branch -d [name_of_your_new_branch]
    $ git push origin :[name_of_your_new_branch]

Note: the : before the Github branch will delete it on Github.

You have now contributed to an existing lab - Thank you very much :-)
