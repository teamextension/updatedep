# whitelist

```
updatedep whitelist
```

####
### Description:

Display instructions on how to whitelist dependencies. Whitelisted dependencies are not upgraded, not checked for vulnerabilities, nor flagged as unused.
### How It Works:
####
The whitelist.txt file is first read from the current working directory. If it is not found, it is read from the ~/.ud/ directory. To whitelist a dependency, add it on a separate line using the format \<groupId\>:\<artifactId\>:\<version\>.
