# Hello World FLIX
Simple repository to demonstrate reusability using FLIX template json files. In this repository is the HelloWorld Cadence contract, a script to read the HelloWorld greeting and a transaction to update the HelloWorld contract's greeting.

The FLIX template in json format is used for scripts and transactions to describe the interactions with a contract.


## Cadence
This repository is mainly used to store the FLIX templates and the related Cadence files. 

## FLIX 
A few flow-cli commands are used to generate the FLIX template json files

Generate template file for reading the HelloWorld contract greeting
```shell
flow flix generate cadence/scripts/ReadHelloWorld.cdc --save cadence/templates/ReadHelloWorld.template.json      
```

Generate template file for Updating HelloWorld greeting
```shell
flow flix generate cadence/transactions/UpdateHelloWorld.cdc --save cadence/templates/UpdateHelloWorld.template.json
```

## Sharing
The template files are all that are needed to interact with the HelloWorld contract. Template can be executed using a local file or a url.

### flow-cli
Use flow-cli to execute flix interaction template to read HelloWorld greeting
```shell
flow flix execute cadence/templates/ReadHelloWorld.template.json --network testnet
```
Result: "Hello, World!"

Update HelloWorld greeting using FLIX
```shell
flow flix execute cadence/templates/UpdateHelloWorld.template.json "New Greeting" --network testnet --signer bob
```

Execute the ReadHelloWorld template to see that the HelloWorld greeting has been updated. One benefit is the user does not need to be familiar with Cadence in order to interact with smart contracts. 

### Remotely

Use flow-cli to execute a FLIX from a url.
```shell
flow flix execute https://raw.githubusercontent.com/onflow/hello-world-flix/main/cadence/templates/ReadHelloWorld.template.json --network testnet
```
 Result: "New Greeting"

 ```shell
flow flix execute https://raw.githubusercontent.com/onflow/hello-world-flix/main/cadence/templates/UpdateHelloWorld.template.json "Hello World" --network testnet --signer bob
 ```

 This transaction will set the greeting back to `Hello World`

 ## Releases

 FLIX json templates are regular files, developers can use github releases to make these templates available so other developers can rely on a specific version. 

 ### `v0.1.0`
 `Read HelloWorld greeting` https://raw.githubusercontent.com/onflow/hello-world-flix/v0.1.0/cadence/templates/ReadHelloWorld.template.json

`Update HelloWorld greeting`
 https://raw.githubusercontent.com/onflow/hello-world-flix/v0.1.0/cadence/templates/UpdateHelloWorld.template.json