# Standards Lab: an open data standard toolkit

Visit https://os4d.opendataservices.coop to read the handbook.

## Developer how-to guides

This section describes how to:

- [Set up a local development environment](#set-up-a-local-development-environment)
- [Build the documentation](#build-the-documentation) on your local machine.
- [Deploy changes](#deploy-changes)
- [Update requirements](#update-requirements)

### Set up a local development environment

#### Clone the repository

```bash
git git@github.com:OpenDataServices/os4d.git
cd os4d
```

Subsequent instructions assume that your current working directory is `os4d`, unless otherwise stated.

#### Create and activate a Python virtual environment

The build requires [Python](https://www.python.org/downloads/) 3.13.

If you already have Python 3.13 installed, you can create a virtual environment using [pyenv-virtualenv](https://github.com/pyenv/pyenv-virtualenv), `python3-venv`, or a Python environment manager of your choice.

If not, we recommend using `pyenv` to install Python 3.13 and `pyenv-virtualenv` to create a virtual environment. 

##### pyenv

1. Install [pyenv](https://github.com/pyenv/pyenv) and the [pyenv-virtualenv](https://github.com/pyenv/pyenv-virtualenv) plugin. The [pyenv installer](https://github.com/pyenv/pyenv-installer) is recommended.
1. Set up Python 3.13 using pyenv:

   ```bash
   pyenv install 3.13
   pyenv local 3.13
   ```

1. Create a virtual environment:

   ```bash
   pyenv virtualenv os4d
   ```

1. Activate the virtual environment:

   ```bash
   pyenv activate os4d
   ```

1. Set the local application-specific virtual environment. Once set, navigating to the `os4d` directory will automatically activate the environment:

   ```bash
   pyenv local os4d
   ```

##### python3-venv

1. Create a virtual environment called .ve:
    a. Linux/MacOS:

      ```bash
      python3 -m venv .ve
      ```

    a. Windows:

      ```bash
      py -m venv .ve
      ```

1. Activate the virtual environment. You must run this command for each new terminal session.:
    a. Linux/MacOS:

      ```bash
      source .ve/bin/activate
      ```

    b. Windows:

      ```bash
      .\.ve\Scripts\activate
      ```

#### Install requirements

```bash
pip install -r requirements_dev.txt
```

### Build the documentation

Sphinx, which builds the documentation, doesn’t watch directories for changes. To regenerate the documentation, start an HTML server, and refresh the browser whenever changes are made, run:

```bash
sphinx-autobuild docs docs/_build/dirhtml
```

Alternatively, build the documentation and view it using a local web server:

```bash
sphinx-build docs docs/_build/dirhtml
python -m http.server --directory docs/_build/dirhtml
```

### Deploy changes

To deploy a development branch to the live documentation site, [create a pull request](https://github.com/OpenDataServices/os4d/compare) to merge the development branch into the `live` branch. Once the pull request is merged, the changes are automatically deployed to the live site at [https://os4d.opendataservices.coop/](https://os4d.opendataservices.coop/).

### Update requirements

#### Update production requirements

1. Edit `requirements.in`.
1. Update `requirements.txt`:
   ```bash
   pip-compile
   ```
1. Update `requirements_dev.txt`:
    ```bash
    pip-compile requirements_dev.in
    ```
1. Install requirements:
   ```bash
   pip-sync requirements_dev.txt
   ```
1. Commit your changes.

#### Update development requirements

1. Edit `requirements_dev.in`.
1. Update `requirements_dev.txt`:
    ```bash
    pip-compile requirements_dev.in
    ```
1. Install requirements:
   ```bash
   pip-sync requirements_dev.txt
   ```
1. Commit your changes.

## Developer reference

This section contains reference documentation that describes the project's configuration.

- [GitHub repository](#github-repository)
- [Sphinx](#sphinx)
- [Read the Docs](#read-the-docs)

### GitHub repository

The project repository is hosted on GitHub.

#### Branches

The `live` branch is used to build the live version of the standard documentation, deployed at [https://os4d.opendataservices.coop/](https://os4d.opendataservices.coop/).

Feature branches branch off the `live` branch, with work merged into the `live` for deployment.

[Branch protection rules](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-protected-branches/managing-a-branch-protection-rule) are configured for the `live` branch. The rules prevent commits being made directly by requiring [pull requests](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/proposing-changes-to-your-work-with-pull-requests/about-pull-requests) before commits can be merged. They also require approvals and status checks to pass before merging.

#### Directory structure

- `.github/`: GitHub Actions workflows
- `docs/`:
  - `*.md`, `*/*.md`: English documentation text
  - `conf.py`: Sphinx configuration
  - `_static/`: CSS and JavaScript for the documentation
  - `_templates/`: Jinja templates for the documentation
  - `.tx/`: Transifex configuration (not yet implemented)
  - `locale/`: Translations of the English documentation (not yet implemented)

The following files are created by running a build and are not version controlled:

- `.ve/`: Python virtual environment (if using [python3-venv](#python3-venv))
- `docs/_build`: Built HTML documentation

### Sphinx

[Sphinx](https://www.sphinx-doc.org/) is the documentation generator used to build the HTML documentation from Markdown source files. It uses the [MyST - Markedly Structured Text - Parser](https://myst-parser.readthedocs.io/en/latest/index.html) to parse the Markdown source files.

#### Configuration

The Sphinx configuration for this project is based on the [Open Data Services Sphinx Base](https://github.com/OpenDataServices/sphinx-base) and is defined in `docs/conf.py`.

### Read the Docs

[Read the Docs](https://readthedocs.org/) builds and hosts the standard documentation site.

Read the Docs automatically creates and builds [pull request previews](https://docs.readthedocs.com/platform/stable/pull-requests.html#pull-request-previews) so that pull request reviewers can preview changes to catch formatting and display issues.

#### Credentials

You can find credentials for Read the Docs in the Open Data Services password database.

