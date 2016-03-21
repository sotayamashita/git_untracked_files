[![Build Status][travis-badge]][travis-link]
[![Slack Room][slack-badge]][slack-link]

# Git_untracked_files

Get the number of untracked files in a repository.

## Install

With [Fisherman]

```
fisher i git_untracked_files
```

## Usage

```fish
if set -l count (git_untracked_files)
    printf "The repository has %i untracked files.\n" $count
end
```

[travis-link]: https://travis-ci.org/fishery/git_untracked_files
[travis-badge]: https://img.shields.io/travis/fishery/git_untracked_files.svg?style=flat-square
[slack-link]: https://fisherman-wharf.herokuapp.com/
[slack-badge]: https://img.shields.io/badge/slack-join%20the%20chat-00B9FF.svg?style=flat-square
[Fisherman]: https://github.com/fisherman/fisherman
