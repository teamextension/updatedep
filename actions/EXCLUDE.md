# exclude

```
updatedep exclude
```

####
### Description:
Display instructions on how to exclude dependencies. Excluded dependencies are skipped when looking for dependency versions.

### How It Works:
####
The exclude.txt file is first read from the current working directory. If it is not found, it is read from the ~/.ud/ directory. To exclude dependencies, add a matching string to the file. Defaults entries in exclude.txt are:
```
alpha
b
dev
m
pre
rc
snapshot
```
