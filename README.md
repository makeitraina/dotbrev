# Brev Setup

Whenever you create or join a project, your project `.brev` directory runs, automating the setup of your project and controlling your machine.

This template is automatically added inside each of your projects created in Brev for you to adjust. For user specific settings, see the [user `.brev` template repository](https://github.com/brevdev/user-dotbrev).

## Repository Contents

If you want to adjust these for more custom setups, here's more information on how this configuration repository is structured.

#### `.brev`
This is our main configuration folder. This is run everytime you create or join a new project. There is also a project specific dot brev with the same structure, which holds software that you can download for each project.

#### `.brev/setup.sh`
This is the main file that runs on your linux machine, directly after we provision it and before your project is cloned.

You can pre-download VSCode extensions and globally install software like zsh, linux build tools, or create-react-app. Anything that you would globally install on your computer.

Careful not to place too many software packages in here (like Node v14, Python, or Go), and instead place that in your project's `.brev`. This way different versions of your software will not conflict, and others can clone your environment.

#### `.brev/ports.yaml`
Here we can specify which ports we want publicly accessible. Currently by default any connection to your project is password protected.

For example, if we run a React app, we may want to make 3000 open to communicate with our backend, or to share a public link of our project.

Example use cases:

Testing (sending requests through Postman)

Frontend - backend connection (sending and receiving requests)

Production deploys (post a public url of your website)

#### `.brev/logs`
This is where we keep logs that occur when running the setup script and cloning repositories (such as this one, and your project repository if you are creating or joining a project from git).

#### `.brev/utils`
This is where we keep any other files that you'd like to include in your `.bash_profile` or your `.zshrc`. We port this folder to each workspace. References will always be `/home/brev/workspace/.brev/utils/<FILENAME>`. Ex. `git-completion.bash` runs if you use our recommended `.bash_profile` settings.
