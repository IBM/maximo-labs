# Add Content to existing lab

Before starting to add or change existing content, create a branch for the changes.

You can get a brief introduction to the use of branches here:<br>
[https://github.com/Kunena/Kunena-Forum/wiki/Create-a-new-branch-with-git-and-manage-branches](https://github.com/Kunena/Kunena-Forum/wiki/Create-a-new-branch-with-git-and-manage-branches)

## 1. Prepare your Git branch

Basically you need to do the following to create a new branch locally and on the Github repo:

    $ git pull
    $ git checkout -b [name_of_your_new_branch]
    $ git push origin [name_of_your_new_branch]

## 2. Make changes

!!! note
    If you are making a new lab, then jump over to "Make first changes for new lab"<br>
    on [Create new lab](../create_new/#make-first-changes-for-new-lab).


Locate the labs folder under the /MkDocs, e.g. /MkDocs/monitor_8.2<br>
Make the changes in the markdown files, image files, and mkdocs.yml file.<br>  

!!! attention "Remember to do this:"
    Update the `about.md` file with Contributors and Change Information.<br>
    Update the `index.md` file with a new Updated date (at the end of the file).


In the terminal navigate to the root of this git repo and execute the build script:

    $ ./build_all_mkdocs.sh

Open the browser and navigate to [http://localhost:8080/](http://localhost:8080/) in order to verify that your changes look as expected. 

!!! tip
    Press control-c to stop the web server and get back to the prompt.


## 3. Commit and push your changes

When you are satisfied with your contribution take a look at the changes you have created in git:

    $ git status

Add those files to git:

    $ git add .

Commit the changes:

    $ git commit -m "Write a descriptive message of your changes"

Push the changes to the Github branch:

    $ git push origin [name_of_your_new_branch]

!!! note
    Repeate step 2 and 3 until you have fulfilled the purpose of your branch.


## 4. Create Pull request

Go to the Github repository [https://github.com/IBM/monitor-hands-on-lab](https://github.com/IBM/monitor-hands-on-lab)

Select your branch in the dropdown box:
![Select branch](/img/contribute/add_select_branch.png)

Create a Pull request:
![Select Pull request](/img/contribute/add_select_pull_request.png)

Give it a title and description. Hit the `Create pull request` button.

!!! attention "Remember to do this:"
    Ask Carlos Ferreia (carlos.ferreira1@ibm.com) to review and accept your Pull Request.

## 5. Clean up branches locally and remotely (Github)

Once the Pull request has been accepted and your commits are added to the master branch, it is time to clean up the branch locally and remotely (on Github).

    $ git checkout master
    $ git branch -d [name_of_your_new_branch]
    $ git push origin :[name_of_your_new_branch]

!!! note
    The `:` before the [name_of_your_new_branch] in the last command will delete it on Github.

---

!!! tip "Thank you !"
    You have now contributed to Maximo Labs - Thank you very much :-)

---
