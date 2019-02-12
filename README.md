# My Rstudio workflow 

with docker & jetpack (packrat)

## Disclaimer

Looking for a good way to work with theses techs. Work in progress.

## Theoritical Workflow

* use [rocker/verse](https://github.com/rocker-org/rocker-versioned) docker to build a general system image of rstudio environnement
* add `jetpack` to global package and add few global development packages like `devtools`
* mount a volume to my local projects directory 
* use one general container for every projet
* use jetpack to have an history of package versions
* packrat is working under the hood to avoid copying same package accross projects


## Afterthoughts

* if you need to modify container, use commit to create a new one
* rocker/verse use mcran, what about if you need to update a package with newer version ? 
	* use jetpack remote option ?
	* use a new image of rocker/verse ?
* to share a project, share Dockerfile + jetpack files


