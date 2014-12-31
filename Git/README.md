[user]
	name = C.T Xue
	email = xuecnt@hotmail.com
[core]
	editor = nano
	quotepath = false
	excludesfile = /Users/CTXue/.gitignore
[color]
	ui = true
[alias]
        ac = !git add -A && git commit -m
	st = status
        ci = commit
        co = checkout
        br = branch
        redo = reset --hard
        last = log -1 HEAD
        df = difftool
        me = mergetool
	sm = log --oneline
[filter "media"]
	clean = git-media-clean %f
	smudge = git-media-smudge %f

[mergetool]
	keepBackup = false

[mergetool "Kaleidoscope"]
	cmd = ksdiff --merge --output \"$MERGED\" --base \"$BASE\" -- \"$LOCAL\" --snapshot \"$REMOTE\" --snapshot
	trustexitcode = true
[merge]
	tool = Kaleidoscope
[difftool "Kaleidoscope"]
	cmd = ksdiff --partial-changeset --relative-path \"$MERGED\" -- \"$LOCAL\" \"$REMOTE\"
[difftool]
	prompt = false
[mergetool]
	prompt = false
[diff]
	tool = Kaleidoscope
[difftool "sourcetree"]
	cmd = opendiff \"$LOCAL\" \"$REMOTE\"
	path =
[mergetool "sourcetree"]
	cmd = /Applications/SourceTree.app/Contents/Resources/opendiff-w.sh \"$LOCAL\" \"$REMOTE\" -ancestor \"$BASE\" -merge \"$MERGED\"
	trustExitCode = true
[push]
	default = matching
[credential]
	helper = osxkeychain