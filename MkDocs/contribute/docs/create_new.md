# Create new lab

 **THIS IS STILL WORK IN PROGRESS**

Creating a new lab follows the same process as under [Add content](../add_content)

* Prepare your Git branch
* Make changes
* Push your changes and close Git branch

Only the "Make changes" is different as it follows a more guided process,  
the other steps are the same.

## Make changes

The following steps are used to crate a new lab based on the provided [template](../../template_1.0)

### Replicate Template to your lab

Select the `template_1.0` folder
![Select template folder](/img/contribute/copy_template_1.png)

Make a copy of the `template_1.0` folder
![Copy template folder](/img/contribute/copy_template_2.png)

Rename the `template_1.0 copy` folder to < product >_< version > for wich this new lab is intended,  
e.g. `mvi_saas`
![Rename template folder](/img/contribute/copy_template_3.png)

Also rename the folder under `img/template_1.0` using the same name lab name,  
e.g. `img/mvi_saas`. It is important that this structure is kept consistent cross all labs in order to easily build and deploy the complete set of labs.
![Rename img/template folder](/img/contribute/copy_template_4.png)

### Modify the mkdocs.yml file

Select and open the `mkdocs.yml` file located in the root of you new lab folder
![Select mkdocs.yml](/img/contribute/edit_mkdocs.yml_1.png)

Edit the marked areas suitable for your new lab
![Edit mkdocs.yml](/img/contribute/edit_mkdocs.yml_2.png)

Which could look like this
![Edit mkdocs.yml](/img/contribute/edit_mkdocs.yml_3.png)

Save the file.

### Build and verify your lab content

In the terminal navigate to the root of this git repo and execute the build script:

    $ ./build_all_mkdocs.sh

Open the browser and navigate to [http://localhost:8080/](http://localhost:8080/) in order to verify that your changes look as expected. Hint: press control-c to stop the web server and get back to the prompt.
