# vulnerable

```
updatedep vulnerable [options] [pom.xml|build.gradle path]
```

###
### Options: 

 | Option                     | Shortened Option | Description                 |
 |----------------------------|------------------|-----------------------------|
 | --ignoreLowVulnerabilities |        -i        | Ignore low vulnerabilities. |
 
####
### Description:

Detect dependencies with vulnerabilities.
### How It Works:
####
For each dependency, explicit and implicit, run a vulnerability scan and display known security vulnerabilities. Uses whitelist.txt and blacklist.txt.
