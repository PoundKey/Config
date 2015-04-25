# Linux Commands

### ls -la
```bash	
-rwxrw-r--    10    root   root 2048    Jan 13 07:11 afile.exe

file permissions,
number of links,
owner name,
owner group,
file size,
time of last modification, and
file/directory name

r = readable, w = writable, x = executable

- Type - Owner - Group - Other
```

### chown [user] [file]
```bash
# Fix the npm install -g error
sudo chown -R $USER /usr/local

```