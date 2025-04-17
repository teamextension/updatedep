# blacklist
```
updatedep blacklist
```

###
Display instructions on how to blacklist dependencies. Blacklisted dependencies are printed out when detected, and are skipped when looking for newer versions.

###
The blacklist.txt file is first read from the current working directory. If it is not found, it is read from the ~/.ud/ directory. To blacklist a dependency, add it on a separate line using the format \<groupId>:\<artifactId>:\<version>.
