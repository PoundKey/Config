```
[user]
	name = 
	email = 
[core]
	editor = nano
	quotepath = false
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
```
