# Git Difftool

While it wasn't `xcdiff`'s original purpose, turns out it can act as git difftool to help provide some semantics on what changed in a project between commits!

## Setup

```sh
git config --local difftool.xcdiff.cmd 'xcdiff -p1 $(dirname "$LOCAL") -p2 $(dirname "$REMOTE") -d -v -f git'
```

## Usage

```sh
git diff --tool xcdiff
```

