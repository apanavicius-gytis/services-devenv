run services: `nix develop --no-pure-eval --command devenv up`
WORK IN PROGRESS WORK IN PROGRESS WORK IN PROGRESS WORK IN PROGRESS WORK IN PROGRESS
# Services devenv
Not to be used on it's own, fork this repo and tailor it to your infrastructure specificaly.

## Idea of how to use it 
1. Fork this repo, add shared services, packages, scripts or whatever else that would be common for every application. This repo will serve as your "glue" for all applications. 
2. For each application's repository, add that forked repo as an input, and append shared parts to that project. Shared services should not be copied to child environments, but things like shared scripts, nix functions, tasks, variables are all game. This is only the general idea, go crazy.
3. Now if we want to update the same script for different projects, we would do this only once rather than tedious copypasta


## Services 
Currently provided repos are my rough estimate of what I will need. Services, obviously, differ for each environment, so disable them freely.

A lot of customization is done by editing `.nix` files directly. Since this has to be a fork and those things should be same for all people that's why it's done this way.

### Current services and their customization
#### KAFKA
    * `./nix/services/kafka/topics.nix` add your topics here.
    * `bootstrap_servers` is not exposed //TODO

#### KAFKA-UI
    * todo idk ports? 

#### TEMPORAL
    * namespaces in `.env` contradicts what is said above, todo move back to `.nix` file
    * ports are specified in `.env` file

#### MARIADB
    * ports are specified in `.env` file
    * initialDatabases `.nix/services/mysql/default.nix`


## TODO 
All customization things that require editing of `.nix` files should be separated i.e.
`./nix/services/mariadb/initial_databases.nix` contains a list of databases that must be created. That's it.

