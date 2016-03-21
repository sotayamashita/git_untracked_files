set -l path $DIRNAME/.t-$TESTNAME-(random)

function -S setup
  mkdir -p $path/{foo,bar,baz}

  for name in foo bar baz
    echo $name > $path/4name/$name

    command git -C  $path/$name init --quiet
  end

  command touch $path/foo/foo
end

function -S teardown
    rm -rf $path
end

test "TESTNAME - Test if there a untracked file #1"
    1 -eq (
    pushd $path/foo
    git_untracked_files
    popd
    )
end
