# Objectives
Update internal links to the new MKdocs standard.

This task is not needed due to deploying Maximo Labs using Github Pages, but merely a clean up activity while all labs in Maximo Labs are being updated anyway.

The aim is to get rid of the `unrecognized relative link` messages during build (in the red box):
![Remove link INFO during build](img/links_01.png)

and getting this result instead:</br>
![Remove link INFO during build](img/links_07.png)

!!! note
    Disregard the `WARNING` messages as they are required when using Github Pages.</br>
    The reason is because the links are to other MKdocs builded labs, hence the MKdocs build for this particular lab does not recognize other labs.

## Simple link

Before:</br>
![Simple Link Before](img/links_04.png)

After:</br>
![Simple Link After](img/links_05.png)


## Link with bookmark

Before:</br>
![Simple Link Before](img/links_02.png)

After:</br>
![Simple Link After](img/links_03.png)

---