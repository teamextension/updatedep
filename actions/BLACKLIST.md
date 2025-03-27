# blacklist
```
updatedep blacklist
```

####
### Description:
Display instructions on how to blacklist dependencies. Blacklisted dependencies are printed out when detected, and are skipped when looking for newer versions.

### How It Works:
####
The blacklist.txt file is read from the current working directory. If the file does not exist, blacklist.txt is read from the ~/.ud path. Blacklist a dependency by adding the dependency in it's own line, in the format `<groupId>:<artifactId>:<version>`.
