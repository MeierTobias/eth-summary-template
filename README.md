# ETHZ Summary Template <!-- omit from toc -->

![action status](https://github.com/meiertobias/eth-summary-template/actions/workflows/build_deploy.yml/badge.svg)

This repository contains the LaTeX summary template which can be used as a submodule or as a starting point for your lecture summary.

[Example.pdf](https://meiertobias.github.io/eth-summary-template/main.pdf)

Topics documented in this ReadMe:

- [How to use this template](#how-to-use-this-template)
  - [Include this repo as a submodule](#include-this-repo-as-a-submodule)
  - [LaTeX setup](#latex-setup)
  - [VS Code setup](#vs-code-setup)
    - [LaTeX checker ChkTeX](#latex-checker-chktex)
- [Contributing](#contributing)
- [Acknowledgements](#acknowledgements)
- [License](#license)

## How to use this template

If your summary is hosted on GitHub or GitLab the best way to use this template is by including it as a submodule. The next step describes how to achieve this. If you don't use a version control tool to manage your changes you can also just download this template and copy the files into the subfolder `src/template` in your summary directory. In this case you can skip the next step and proceed with the [LaTeX setup](#latex-setup).

### Include this repo as a submodule

Navigate to the root folder of your existing repository and execute the following command:

``` bash
git submodule add https://github.com/MeierTobias/eth-summary-template.git src/template
```

This adds the template repo to the folder `src/template`

> **_Remember:_** If you later want to clone your repository to another machine you need to add the `--recurse-submodules` flag to your clone command to pull the submodules. `git clone --recurse-submodules https://github.com/your/repository.git`

### LaTeX setup

Navigate to the subfolder that contains this repository `src/template` there you find a folder called `example`. Copy the two files `main.tex` and `var.tex` to the `src` folder. This can also be done by executing the following command:

``` bash
cp src/template/example/* src
```

Open the newly copied `var.tex` file in your `src` directory and adjust the parameters (values in the left most curly braces) to your needs.

| Parameter          | Description                                                                |
| ------------------ | -------------------------------------------------------------------------- |
| `\templatePath`    | Specifies the relative path from your main.tex file to the template folder |
| `\summaryTitle`    | Summary title                                                              |
| `\summarySubTitle` | Line below the title                                                       |
| `\summaryAuthor`   | Autors                                                                     |
| `\repoURL`         | Link to your repository                                                    |
| `\summaryInfo`     | General information about your summary                                     |
| `\imagePath`       | Relative path to your image folder                                         |
| `\orientationmode` | Landscape or portrait                                                      |
| `\papersize`       | A4 or A3                                                                   |
| `\fontheight`      | Font size                                                                  |
| `\includeexamples` | Specify if you want to print the example environment or not. (1 or 0)      |

Now you are ready to compile the main.tex file and start working on your summary.

We recommend to read the [style guide](https://meiertobias.github.io/eth-summarytemplate3/main.pdf) and follow these guidelines whenever possible.

### VS Code setup

If you use the [LaTeX Workshop extension](vscode:extension/James-Yu.latex-workshop) we provide an example settings file in this repository to get you started. Just copy the file `src/template/.vscode/settings.json.example` to `.vscode` and remove the `.example`in the filename.

#### LaTeX checker ChkTeX

To get more information about the different warnings search for your warning code in the ChkTeX [documentation](https://mirror.init7.net/ctan/support/chktex/ChkTeX.pdf). If you want to disable a checker warning on a specific line you can add `% chktex ##` to the end of the line with the warning number you want to suppress.

## Contributing

Feel free to fork this repository and create a pull request to integrate your corrections and extensions.

> **_HINT:_** If you're working on this template repository itself change the `\templatePath` parameter to `../` to compile the main.tex example.

## Acknowledgements

Thanks to _S._ for creating the AMIV/ETHZ summaries LaTeX template which was used as a starting point for this project and can be downloaded [here](https://de.overleaf.com/latex/templates/amiv-slash-ethz-summaries-template-landscape/trggddjtjhqr).

## License

Distributed under the MIT License. See [LICENSE](LICENSE) for more information.
