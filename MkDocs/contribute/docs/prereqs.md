# Pre-Requisite Instructions

Here are the required pre-requisites for contributing to The Maximo labs.

## Install and Setup Python 3

Even though Python 3.8.2 is installed on your Mac, you'd want to use the latest release.</br>
First install Homebrew on Mac as described at [https://brew.sh/](https://brew.sh/):

    $ /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

![Install Homebrew](/img/contribute/pre-req_1.png)

Press RETURN. When completed it is time to install the latest version of Python 3:

    $ brew install python3

Quit and restart the Terminal to have your PATH updated, then run python3 -V and pip3 -V:
![Homebrew installation of Python3](/img/contribute/pre-req_2.png)

### Uninstall Python 3

If you want to uninstall Python 3 and Homebrew:

    $ brew uninstall python3
    $ /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/uninstall.sh)"

!!! note "Additional Uninstallation Information"
    Further information about uninstalling:</br>
    [https://huybien.com/how-to-completely-uninstall-python-on-macos/](https://huybien.com/how-to-completely-uninstall-python-on-macos/)</br>
    [https://docs.brew.sh/FAQ#how-do-i-uninstall-homebrew](https://docs.brew.sh/FAQ#how-do-i-uninstall-homebrew)


## Install MkDocs

You can install Python packages with

    $ pip3 install <package>


Installing MkDocs will install many other Python 3 packages.</br>
If you only use Python 3 for this exercise then go ahead installing MkDocs right away, otherwise it is recommended to use python virtual environments.

    $ python3 -m venv max-py3
    $ cd max-py3/bin
    $ source activate
    $ python -V
    $ pip -V
    $ pip list


![Create virtual environment](/img/contribute/pre-req_3.png)


!!! note "Notes"
    The command `source activate` activates the virtual environment which you can see by the name of the virtual environment being pre-pended to the terminal prompt, </br>
    i.e. in this case with `(max-py3)`.</br>
    </br>
    The commands `python3` and `pip3` is replaced with `python` and `pip` once the virtual environment is activated.</br>
    </br>
    More information about Python 3 virtual environments:</br>
    [https://docs.python.org/3/library/venv.html](https://docs.python.org/3/library/venv.html)


Install MkDocs [https://www.mkdocs.org/](https://www.mkdocs.org/)

    $ pip install mkdocs
    $ pip list

![pip list after MkDocs package is installed](/img/contribute/pre-req_4.png)


You can deactivate the virtual environment with this command:

    $ deactivate

</br>
## Git / Github setup

1. Get a Github account
2. IBMers can get access to the IBM Github area here:<br>
[https://w3.ibm.com/developer/opensource/contribute/ibm-github/](https://w3.ibm.com/developer/opensource/contribute/ibm-github/)
3. Access the Github repo of the IBM Maximo Labs here:<br>
[https://github.com/IBM/monitor-hands-on-lab](https://github.com/IBM/monitor-hands-on-lab)
4. Access the latest published labs here:<br>
[https://mam-hol.eu-gb.mybluemix.net/](https://mam-hol.eu-gb.mybluemix.net/)<br>
(This might not contain the latest changes from the Github repository)

Clone the github repository down to your local machine:

    $ cd ~
    $ mkdir Github
    $ cd ~/Github
    $ git clone git@github.com:IBM/monitor-hands-on-lab.git
    $ cd monitor-hands-on-lab

Now build the complete site on your local machine:

    $ ./build_all_mkdocs.sh
    
Open a browser and navigate to [http://localhost:8080/](http://localhost:8080/) and take a look at the complete IBM Maximo labs locally.  
<br>
To find these contribute instructions navigate to [http://localhost:8080/contribute](http://localhost:8080/contribute)

!!! tip "Next step"
    You are now ready to either [add to an existing lab](../add_content/) or [create a new lab from scratch](../create_new/).