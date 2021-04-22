<p align="center">
  <a href="" rel="noopener">
 <img width=200px height=200px src="https://i.imgur.com/6wj0hh6.jpg" alt="Project logo"></a>
</p>

<h3 align="center">Tomcat Container using Ansible Playbook</h3>

<div align="center">

[![Status](https://img.shields.io/badge/status-active-success.svg)]()
[![GitHub Issues](https://img.shields.io/github/issues/kylelobo/The-Documentation-Compendium.svg)](https://github.com/kylelobo/The-Documentation-Compendium/issues)
[![GitHub Pull Requests](https://img.shields.io/github/issues-pr/kylelobo/The-Documentation-Compendium.svg)](https://github.com/kylelobo/The-Documentation-Compendium/pulls)
[![License](https://img.shields.io/badge/license-MIT-blue.svg)](/LICENSE)

</div>

---

<p align="center"> Run a Tomcat container with a war deployed inside. Tests.
    <br> 
</p>

## 📝 Table of Contents

- [About](#about)
- [Getting Started](#getting_started)
- [Usage](#usage)
- [Authors](#authors)

## 🧐 About <a name = "about"></a>

Creating a playbook that accomplished the following task: creating a Dockerfile that can be used to create a container image. A container created using the image should run the Tomcat Sample Application inside a Tomcat Application Server v9.0 and be able to serve the application on port 8080 under the following URL: http://localhost:8080/sample . An Ansible playbook should be used to build the container image from the Dockerfile and start a container using it. Additionally, the playbook should validate that the container was successfully created and is serving the sample application on the URL provided earlier using a Pytest (Python Testing Framework) script. The Ansible playbook should be idempotent, meaning it can be run multiple times without failures. This playbook is build-and-run.yml .


All the necessary files for run the playbook are provided.

P.S.: Here you can find a ProofOfConcept using community.docker module also (WIP, not completed) : build-and-run-with-dockerSDK

## 🏁 Getting Started <a name = "getting_started"></a>

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See [deployment](#deployment) for notes on how to deploy the project on a live system.

### Prerequisites

It is assumed that Docker and python3 is installed in your system.

### Installing


If you need to configure python tools for this, you can use the bash script "create_virt_env.bash" to enable ansible, pytest and Docker SDK.

```
create_virt_env.bash
```


## 🔧 Running the tests <a name = "tests"></a>

The playbook will run them.


## 🎈 Usage <a name="usage"></a>

```
ansible-playbook -i inventory.ini build-and-run.yml
```



## ✍️ Authors <a name = "authors"></a>

- [@mirespace](https://github.com/mirespace) - A proposed task for DevOps



