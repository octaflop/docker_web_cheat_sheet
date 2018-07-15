# docker_web_cheat_sheet

A Python / Linux Dev Environment Cheat-Sheet Repo

## Docker

Install Docker & Docker Compose, follow these directions: https://docs.docker.com/compose/install/

In this repo, you can run `docker-compose -d` and it will spin up an example of python
being run on a linux OS with flask getting installed and copying over this repo to the image.

## Git & Git Flow

*Don't install `git-flow` or any tools which do it for you -- learn it yourself.*

[![git flow by nvie](https://nvie.com/img/git-model@2x.png)](https://nvie.com/posts/a-successful-git-branching-model/?)

You need to understand that in git, `branch`es are free. You can create branches to your heart's content.
You can create branches of branches. You can merge branches together.

Basic git flow looks like:

`master`: the main branch for the server.
`develop`: A branch which will be merged into master -- the latest code. When you start
a new feature, you make a branch off of this branch.
`feature-<feature-name>`: A feature branch. You will create a branch off of the `develop`
branch and when it passes muster, merge it onto the develop branch.

You want your QA team to look at the `develop` branch in its entirety, so some companies will make
a `release` branch and tag which will be sent to a staging server. In either case,
you want to run `git tag <tag_id>` for identifying versions of code in a state, and you'll
want to ensure you're only pushing tags to servers -- a tag is a capture state, so pushing a tag
ensures you keep that exact state.

### Git cheat sheet

* `git commit -am 'message'` commit with a helpful message.
Be clear by following the git commit message standards:
https://github.com/erlang/otp/wiki/writing-good-commit-messages
  * Use imperative form, eg "This commit will 'Add initial documentation'"
* `git rebase develop`: This will ensure that your feature branch is based on `develop`
  * `git rebase -i develop`: If you have a bunch o' commits, use this to clean them up.
  Read carefully.
* `git please`: if you rebase, you have literally changed git's history. So you need to run
`git please` which is an alias you'll need to set up with:
`$ git config --global alias.please 'push --force-with-lease'`


## Debugging API connections

Use and master [postman](https://www.getpostman.com/).
Pay special attention to ports, authentication, and METHODs.

You can also export to `curl` from firefox / chrome by opening the dev tools and
right clicking the network request. Then select "Copy as curl". This will also copy
authentication credentials, so be wary that you don't share production credentials.
