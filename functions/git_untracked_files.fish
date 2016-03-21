function git_untracked_files -d "Get the number of untracked files in a repository"
    if not git_is_repo
        return 1
    end

    git ls-files --others --exclude-standard | awk '{ n++ } END { print n }'
end
