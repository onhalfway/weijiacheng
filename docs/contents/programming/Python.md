- [Python](#python)
  - [Python Installing](#python-installing)
  - [MKDocs: build static website with Markdown files.](#mkdocs-build-static-website-with-markdown-files)

# Python

## Python Installing

- [Python](https://www.python.org/)
  - show version: `python --version`
  - If you are using Windows, some of the above commands may not work out-of-the-box. A quick solution may be to preface every Python command with `python -m`
    - For a more permanent solution, you may need to edit your PATH environment variable to include the Scripts directory of your Python installation. Recent versions of Python include a script to do this for you. Navigate to your Python installation directory (for example C:\Python34\), open the Tools, then Scripts folder, and run the win_add2path.py file by double clicking on it. Alternatively, you can [download](https://svn.python.org/projects/python/trunk/Tools/scripts/win_add2path.py) the script and run it (python win_add2path.py).
- Installing Python package manager: pip
  - [pip](http://pip.readthedocs.io/en/stable/installing/)
  - [download get-pip.py](https://bootstrap.pypa.io/get-pip.py)
    - install pip: `python get-pip.py`
    - show version: `pip --version`
    - upgrade pip: `pip install --upgrade pip`

## MKDocs: build static website with Markdown files.

- [MkDocs: Project documentation with Markdown](https://www.mkdocs.org/)
- Installing MkDocs
  - `pip install mkdocs` or `python -m pip install mkdocs`
  - `mkdocs --version` or `python -m mkdocs`
- manpages
  - `pip install click-man`
  - `click-man --target path/to/man/pages mkdocs`
- MKDocs Getting Started
  - `mkdocs new my-project`
  - `cd my-project`
  - `mkdocs serve`
  - `curl http://127.0.0.1:8000/`
  - `mkdocs build`
  - `mkdocs build --clean`
  - `echo "site/" >> .gitignore`
  - `mkdocs --help`
  - `mkdocs <command> --help`
  - `mkdocs build --help`
  - `mkdocs build --clean`

- [Deploying your docs](https://www.mkdocs.org/user-guide/deploying-your-docs/)
  - For Github Project Pages
    - `cd cd my-project`
    - `mkdocs gh-deploy [--clean] [-v]`
    - That's it! Behind the scenes, MkDocs will build your docs and use the [ghp-import](https://github.com/davisp/ghp-import) tool to commit them to the gh-pages branch and push the gh-pages branch to GitHub.
    - run under PowerShell with Administrator will fail due to FileNotFoundError (Python 3.7.3, pip 19.2.3, MKDocs 1.0.4)
    - success under git bash
    - [Git Bash for Windows](https://git-scm.com/download/win)
  - For Github Organization and User Pages
    - `cd ../orgname.github.io/`
    - `mkdocs gh-deploy --config-file ../my-project/mkdocs.yml --remote-branch master`

- [Deploying](https://www.mkdocs.org/)
  - [GitHub project pages](https://help.github.com/articles/creating-project-pages-manually/)
  - [GitHub project pages](https://help.github.com/en/articles/creating-project-pages-using-the-command-line)
  - [Deploying your docs](https://www.mkdocs.org/user-guide/deploying-your-docs/)
  - [User, Organization, and Project Pages](https://help.github.com/en/articles/user-organization-and-project-pages)
  - C:\Users\kehwei\AppData\Local\Programs\Python\Python37\Lib\site-packages\mkdocs\commands\gh_deploy.py
  - C:\Users\kehwei\AppData\Local\Programs\Python\Python37\Lib\site-packages\mkdocs\themes\
  - C:\Users\kehwei\AppData\Local\Programs\Python\Python37\Lib\site-packages\mkdocs\themes\mkdocs\base.html

```shellscript

```