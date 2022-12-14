# Multipath Network Protocols Lab<img src="https://www.vectorlogo.zone/logos/vagrantup/vagrantup-icon.svg" align=right height=55px /><img src="https://upload.wikimedia.org/wikipedia/commons/1/1d/No_image.svg" align=right width=15px /><img src="https://www.vectorlogo.zone/logos/ansible/ansible-icon.svg" align=right height=55px />

A Vagrant lab with Ansible provisioning that automates the deployment and configuration of a bedtest intended to perform MultiPath traffic flow experiments. The proposed test scenarios explore current implementations of MPTCP and MPQUIC protocols and their use for live video streaming applications.

## Table of Contents

- [Description](#description)
- [Getting Started](#getting-started)
- [Running the tests](#running-the-tests)
- [Documentation](#documentation)
- [Built With](#built-with)

## Description

In just a few commands, the following creates the virtual environment <ins>shown below</ins> on the host machine using Vagrant. All the services and configurations are automatically deployed to the virtual machines using Ansible from the host.

> *Add network topology diagram here.*

### List of deployed machines

|   **Machine**    |                 **Description**                  |
| ---------------  | ---------------------------------------------- |
| **`VM1`**        | *To be defined.* |
| **`VM2`**        | *To be defined.* |
| **`VM3`**        | *To be defined.* |

## Getting Started

Using Vagrant is a quick and easy way to create and manage portable virtual environments that require multiple guests to run simultaneously on a single host machine. To deploy the topology, proceed with the following steps:

1. Clone the repository on the host machine:

```sh
git clone <path>
```

2. Install required packages:

```sh
sudo apt install vagrant virtualbox python3 ansible
```

3. Run Vagrant setup calling the provided [vagrantfile](./vagrantfile):

```sh
cd ./multipath-network-protocols-lab      # Move to the root folder of the Vagrantfile
vagrant up                                # Creates and configures guest machines
```

> **Note:** After running the *`vagrant up`* command, Vagrant creates the virtual machines and the network topology based on the provided Vagrantfile. Then, it provisions the guests with the provided Ansible [playbook.yml](./playbook.yml).

Wait for Vagrant to end with a successful Ansible provisioning. The virtual environment should now be fully configured and operationnal, you can go to the next section « [Running the tests](#running-the-tests) ».

#### Other commands


```sh
vagrant status                  # Gives status information about running virtual machines
vagrant provision               # Re-provision the guests without having to rebuild the whole environment
```

> **Note:** For more information on available commands, please refer to [vagrant CLI](https://www.vagrantup.com/docs/cli/version) documentation.

## Running the tests

### 1) Establish SSH connection to guests

You can establish an `ssh` connection with any guest using its specified hostname in Vagrant via the following command from the host machine:

```sh
vagrant ssh VM1                 # Initiate ssh connection to the guest VM1
```

## Documentation

> *To be defined.*

## Built With

* [Ansible](https://www.ansible.com/) - Red Hat Open source IT Automation platform
* [Vagrant](https://www.vagrantup.com/) - Open source software for building and maintaining virtual environments