# ETHZ Summary Template <!-- omit from toc -->

![action status](https://github.com/meiertobias/eth-summary-template/actions/workflows/build_deploy.yml/badge.svg)

This repository contains the LaTeX summary template which can be used as a submodule or as a starting point for your lecture summary.

[Example.pdf](https://meiertobias.github.io/eth-summarytemplate3/main.pdf)

Topics documented in this ReadMe:

- [How to use this template](#how-to-use-this-template)
  - [Include this repo as a submodule](#include-this-repo-as-a-submodule)
  - [LaTeX setup](#latex-setup)
- [Contributing](#contributing)
- [Acknowledgements](#acknowledgements)
- [License](#license)

## How to use this template

If your summary is hosted on GitHub or GitLab the best way to use this template is by including it as a submodule. The next step describes how to achieve this. If you don't use a version control tool to manage your changes you can also just download this template and use the copied files. In this case you can skip the next step and proceed with the [LaTeX setup](#latex-setup).

### Include this repo as a submodule

Navigate to the root folder of your existing repository and execute the following command:

``` bash
git submodule add https://github.com/MeierTobias/eth-summary-template.git src/template
```

This adds the template repo to the folder `src/template`

> **_Remember:_** If you later want to clone your repository to another machine you need to add the `--recurse-submodules` flag to your clone command to pull the submodules. `git clone --recurse-submodules https://github.com/your/repository.git`

### LaTeX setup

## Contributing

Feel free to fork this repository and create a pull request to integrate your corrections and extensions.

## Acknowledgements

Thanks to *S.* for creating the AMIV/ETHZ summaries LaTeX template which was used as a starting point for this project and can be downloaded [here](https://de.overleaf.com/latex/templates/amiv-slash-ethz-summaries-template-landscape/trggddjtjhqr).

## License

Distributed under the MIT License. See [LICENSE](LICENSE) for more information.
