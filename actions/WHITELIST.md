# whitelist

```
updatedep whitelist
```

####
### Description:

Display instructions on how to whitelist dependencies. Whitelisted dependencies are not upgraded, not checked for vulnerabilities, nor flagged as unused.
### How It Works:
####
The whitelist.txt file is read from the current working directory. If the file does not exist, whitelist.txt is read from the `~/.ud` path. Whitelist a dependency by adding the dependency in it's own line, in the format <groupId>:<artifactId>:<version>.
