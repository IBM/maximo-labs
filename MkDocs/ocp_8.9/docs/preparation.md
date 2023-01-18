# Exercise 3 - Preparation

**Objectives**

In this Exercise you will learn how to:

* Prepare your local laptop with docker.
* Download the convenience scripts for the deployment.

**Setup Local Files**

1\. Create a local folder (present working directory) for the deployment. Change directory (cd)

```shell
mkdir mas89; cd $_
```

2\. Download or make available your AppPoint license file: `license.dat` to the above created folder.

3\. Run the docker container. You will be inside the docker container going forward.

```shell
docker run -it --rm --pull always -v ${PWD}:/scripts --name ibmmas quay.io/ibmmas/cli
```

4\. Change directory.

```shell
cd /scripts
```

5\. Download author's script files

```shell
bash <(curl -sL https://ibm.biz/deploymasmanage)
```

!!! note

    You are inside the docker terminal. 