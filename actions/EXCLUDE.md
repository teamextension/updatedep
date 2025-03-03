# exclude

```
updatedep exclude
```

####
### Description:
Display instructions on how to exclude dependencies. Excluded dependencies are skipped when looking for dependency versions.

### How It Works:
####
The exclude.txt file is read from the current working directory. If the file does not exist, exclude.txt is read from the UPDATEDEP_HOME environment variable path. Exclude dependencies by adding the dependency pattern in it's own line. Here are the defaults entries in exclude.txt.
```
-rc
-m
snapshot
beta
```
