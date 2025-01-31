# ETHZ ETHZ Summary Description

![action status](https://github.com/meiertobias/eth-repo-name/actions/workflows/build_deploy.yml/badge.svg)

This repository contains the LaTex source of the ETHZ Summary Description course summary.

A pre-build pdf file can be downloaded here:

- [eth-repo-name-full.pdf](https://meiertobias.github.io/eth-repo-name/main_full.pdf)
- [eth-repo-name.pdf (without examples)](https://meiertobias.github.io/eth-repo-name/main.pdf)

## Getting-Started

To clone this repo and the necessary submodules add the `--recurse-submodules` flag to your `git clone` command. If you forgot to add the `--recurse-submodules` flag when you cloned the repo you can pull the submodules by running `git submodule init` and then `git submodule update` in the root directory of repository.

After you cloned this repo there are two options to build the LaTeX files ether you [use the Docker Container](#docker) or build it with your [native installed LaTeX compile](#native-latex-compiler) of choice.
If you want a hassle-free way to work with our LaTeX project, we recommend using Docker.

> **Important**
Make sure to compile with xelatex (required by fontspec).

### Docker

1. Make sure you have Docker installed on your system. If you don't have it already, you can download and install it from the [official Docker website](https://www.docker.com/get-started/).

2. After you launched the docker daemon (started Docker Desktop) you can simply run execute the `./build_latex_local.sh` file to generate the pdf files. They are located in a newly created subfolder called `build`.  
(Most probably you have to change the execution permissions with `chmod +x build_latex_local.sh` before you are able to run the script for the first time.)

### Native LaTeX Compiler

If you want to use your own native installed LaTeX compiler we recommend to use [TeXLive](https://www.tug.org/texlive/) which integrates well within visual studio code.

If you use the [LaTeX Workshop extension](vscode:extension/James-Yu.latex-workshop) you can add the following lines to your `.vscode/settings.json` file to configure the system. There is an example settings file you can use. To get the minimum required configuration always open the provided code-workspace. This can be done by File->"Open Workspace from File" and then select the file `.vscode/eth-comp-control.code-workspace`.

To compile with xelatex set: **(required)**

```json
"latex-workshop.latex.recipe.default": "latexmk (xelatex)"
```

Specify an output directory:

```json
"latex-workshop.latex.outDir": "../build",
```

Remove unnecessary build files (slows down compilation time):

```json
"latex-workshop.latex.clean.fileTypes" : [ "*.aux", "*.fls", "*.synctex.gz", "*.out", "*.log", "*.fdb_latexmk" ],
"latex-workshop.latex.autoClean.run": "onBuilt",
"latex-workshop.latex.clean.method": "glob",
"latex-workshop.latex.clean.subfolder.enabled": true,
```

To enable the LaTeX checker ChkTeX:

```json
"latex-workshop.linting.chktex.enabled": true, 
"latex-workshop.linting.chktex.exec.args": ["-wall","-n8","-n13","-n21","-n22","-n30","-n46","-e16","-q"],
```

To get more information about the different warnings search for your warning code in the ChkTeX [documentation](https://mirror.init7.net/ctan/support/chktex/ChkTeX.pdf). If you want to disable a checker warning on a specific line you can add `% chktex ##` to the end of the line with the warning number you want to suppress.

## Prerequisites

The images and other compressed files are managed by git-lfs. Therefor you need to [install git-lfs](https://git-lfs.com/) fist (`brew install git-lfs` on MacOS).

All LaTeX files are autoformatted with `latexindent` which comes within the TexLive installation. To install on MacOS simply run `brew install latexindent`.

## Contributing

Feel free to fork this repository and create a pull request to integrate your corrections and extensions.

## Template

The LaTeX template of this summary can be found [here](https://github.com/MeierTobias/eth-summary-template).

## License

Distributed under the MIT License. See [LICENSE](LICENSE) for more information.

## Disclaimer
