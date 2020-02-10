#!/usr/bin/env bash

### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ### #
#
# help and README
#
### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ### #
		  #
		 # #
		#   #
function help-main {
cat <<EOF > bashlava_help.md

# help

## See all available commands

- which

## More help:

- help-bash
- help-workflow

Edit the these help file under directory /add_on.

## Git repo

- https://github.com/firepress-org/bash-script-template

## Requirements

We expect that bashlava is installed here /usr/local/bin/bashlava.sh

- [Docker](https://docs.docker.com/install/)
- [Hub](https://github.com/github/hub#installation)
- [Terminal Markdown Viewer](https://github.com/axiros/terminal_markdown_viewer)

## To test bashlava

- test
EOF
input_2="bashlava_help.md"
App_glow && rm bashlava_help.md || true
}

function help-bash {
cat <<EOF > bashlava_help.md
## Operator	Description

```
  ! EXPRESSION	  The EXPRESSION is false.
  -n STRING	      The length of STRING is greater than zero.
  -z STRING	      The lengh of STRING is zero (ie it is empty).
  STRING1         = STRING2	STRING1 is equal to STRING2
  STRING1         != STRING2	STRING1 is not equal to STRING2
  INTEGER1        -eq INTEGER2	INTEGER1 is numerically equal to INTEGER2
  INTEGER1        -gt INTEGER2	INTEGER1 is numerically greater than INTEGER2
  INTEGER1        -lt INTEGER2	INTEGER1 is numerically less than INTEGER2
      -d FILE	    FILE exists and is a directory.
      -e FILE	    FILE exists.
      -r FILE	    FILE exists and the read permission is granted.
      -s FILE	    FILE exists and its size is greater than zero (ie. it is not empty).
      -w FILE	    FILE exists and the write permission is granted.
      -x FILE	    FILE exists and the execute permission is granted.
```
EOF

input_2="utility_help.md"
App_glow && rm utility_help.md || true
}

function help-workflow {
cat <<EOF > bashlava_help.md
# Workflows
for https://github.com/firepress-org/ghostfire/

## A1) classic worklow

1. cmd <edge> (update code on edge)
2. cmd <master 3.5.1>  (to squash commits on branch master)
                      (the system will prompt to edit the CHANGELOG.md)
3. cmd <release 3.5.1> (will push tag and release on github)
4. At this point, we are back on fresh <edge> branch 

## A2) alternative worklow

2. cmd <master-nosq 3.5.1>  (without squashing commits on branch master)

## B) Dockerfile workflow

- During step 1 above <appversion 3.5.1> to update the Dockerfile
- Example when updating for https://github.com/firepress-org/ghostfire/

EOF

input_2="bashlava_help.md"
App_glow && rm bashlava_help.md || true
}

function help-pr-process {
cat <<EOF > bashlava_help.md
# Orginal post
- https://www.gatsbyjs.org/blog/2020-01-08-git-workflows/

# Notes

# root branch is feat/headless-cms

git checkout feat/headless-cms-pt2
git rebase feat/headless-cms-pt1

# fix conflicts if any
# stage all the changes we just made
# wrap up the rebase
# git add . && \
# git rebase --continue || true

git push origin feat/headless-cms-pt2 -f

# PR on github
# Merge from the first one up (merge pt1 into the root branch,
# and then merge pt2 into the root branch)

# Merge the earliest open PR into the root branch, using the standard “merge” option.
# Change the base of the next branch to point at the root branch
# In this case, we merge:
# feat/headless-cms-pt1 TO feat/headless-cms
# then, we merge:
# feat/headless-cms-pt2 TO feat/headless-cms

# Update our local state
git checkout master
git pull origin master
# Rebase our root branch
git checkout feat/headless-cms
git rebase master
# Continue down the chain
git checkout feat/headless-cms-pt2
git rebase feat/headless-cms

EOF

input_2="bashlava_help.md"
App_glow && rm bashlava_help.md || true
}

function help-which {
cat <<EOF > bashlava_help.md

# Available functions

EOF
input_2="bashlava_help.md"
App_glow && rm bashlava_help.md || true
}

function help-template {
cat <<EOF > bashlava_help.md
# Warning

At this point we have to edit your new file and commit it.
EOF
input_2="bashlava_help.md"
App_glow && rm bashlava_help.md || true
}