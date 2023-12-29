# Pre-Requisite Instructions

Here are the required pre-requisites for contributing to The Maximo Labs.

## Install Python 3

It is recommended to install and use the latest release of Python 3.</br>
First install Homebrew on Mac and then Python 3:

    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    brew install python3


!!! note "Additional Information"
    Installing Homebrew: [https://brew.sh/](https://brew.sh/){target=_blank}</br>
    Installing Python 3: [https://formulae.brew.sh/formula/python3](https://formulae.brew.sh/formula/python@3.9){target=_blank}</br>
    </br>
    Uninstalling tips:</br>
    [https://huybien.com/how-to-completely-uninstall-python-on-macos/](https://huybien.com/how-to-completely-uninstall-python-on-macos/){target=_blank}</br>
    [https://docs.brew.sh/FAQ#how-do-i-uninstall-homebrew](https://docs.brew.sh/FAQ#how-do-i-uninstall-homebrew){target=_blank}
</br>
## Install MkDocs

You will be using the package installer for python (pip) to install MkDocs within a python virtual environment (venv).</br>
First lets get the python 3 virtual environment up and running:

    cd ~
    pwd
    python3 -m venv max-py3
    cd max-py3/bin
    source activate
    python -V
    pip -V
    pip list


![Create virtual environment](/img/contribute/pre-req_3.png)

Then you will install the MkDocs packages and verify the packages has been installed:

    pip install mkdocs
    pip list

![pip list after MkDocs package is installed](/img/contribute/pre-req_4.png)


You can deactivate the virtual environment with this command:

    deactivate

!!! note "Additional Information"
    MkDocs: [https://www.mkdocs.org/](https://www.mkdocs.org/){target=_blank}</br>
    Package Installer for Python: [https://pip.pypa.io/en/stable/](https://pip.pypa.io/en/stable/){target=_blank}</br>
    Python 3 virtual environments: [https://docs.python.org/3/library/venv.html](https://docs.python.org/3/library/venv.html){target=_blank}

</br>
## Git / Github setup

1. Get a Github account
2. IBMers can get access to the IBM Github area here:<br>
[https://w3.ibm.com/developer/opensource/contribute/ibm-github/](https://w3.ibm.com/developer/opensource/contribute/ibm-github/){target=_blank}
3. Access the Github repo of the IBM Maximo Labs here:<br>
[https://github.com/IBM/maximo-labs](https://github.com/IBM/maximo-labs){target=_blank}
4. Access the latest published labs here:<br>
[http://maximo-lab.monitordemo4.ibmmam.com/](http://maximo-lab.monitordemo4.ibmmam.com/){target=_blank}<br>
(This might not contain the latest changes from the Github repository)

Clone the github repository down to your local machine:

    cd ~
    mkdir Github
    cd ~/Github
    git clone git@github.com:IBM/maximo-labs.git
    cd maximo-labs

Now build the complete site on your local machine:

    ./build_all_mkdocs.sh
    
Open a browser and navigate to [http://localhost:8080/](http://localhost:8080/){target=_blank} and take a look at the complete IBM Maximo Labs locally.  
<br>
To find these contribute instructions navigate to [http://localhost:8080/contribute](http://localhost:8080/contribute){target=_blank}

!!! tip "Next step"
    You are now ready to either [add to an existing lab](../add_content/) or [create a new lab from scratch](../create_new/).