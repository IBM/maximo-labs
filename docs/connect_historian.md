# Introduction

Customers that have Operational Technology data from SCADA systems that incrementally store industrial process data in a historian database can publish that data Maximo Asset Monitor.   This module explains how to install and configure a IBM Watson IoT Bulk Data Ingest Connector for SCADA to publish historian time series data into IBM Maximo Asset Monitor.  The [IBM Watson IoT Bulk Data Ingest Connector for SCADA](https://github.com/ibm-watson-iot/mas-scada-bulkingest) is an open source asset and supported by the Community.

# Before You Begin

Collect information regarding the  host operating system (OS) and  OS version the Historian database is installed on.  Make sure the OS is one of the supported operating environments listed in the documentation.  You can install the software by either:
*  Running the installation script
*  Building and running the Connector Container

The facilitator should have already installed and configured using the the Connector [documentation](https://ibm-watson-iot.github.io/mas-scada-bulkingest/0) and the readme in the source [repository](https://github.com/ibm-watson-iot/mas-scada-bulkingest).

## Contacts

* `mkdocs new [dir-name]` - Create a new project.
* `mkdocs serve` - Start the live-reloading docs server.
* `mkdocs build` - Build the documentation site.
* `mkdocs help` - Print this help message.

## Contribute

    mkdocs.yml    # The configuration file.
    docs/
        index.md  # The documentation homepage.
        ...       # Other markdown pages, images and other files.
