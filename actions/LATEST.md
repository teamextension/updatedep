# latest

```
updatedep latest [options] [pom.xml|build.gradle path]
```
###
### Options:

 | Option                     | Shortened Option | Description                 |
 |----------------------------|------------------|-----------------------------|
 | --ignoreLowVulnerabilities |        -i        | Ignore low vulnerabilities. |
####
### Description:
Display the latest dependency versions.
### How It Works:
####
For each explicit dependency, determine the latest version, then compare the current version with the latest version. Uses whitelist.txt, blacklist.txt and exclude.txt.
