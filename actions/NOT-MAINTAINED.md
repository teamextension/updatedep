# not-maintained

```
updatedep not-maintained [options] [pom.xml|build.gradle path]
```

###
### Options:

 | Option                                                            | Shortened Option                                        | Description                              |
 |-------------------------------------------------------------------|---------------------------------------------------------|------------------------------------------|
 | --ignoreLowVulnerabilities                                        | -i                                                      | Ignore low vulnerabilities.              |

####
### Description:
Identify dependencies that haven’t had a release in over 5 years.
### How It Works:
####
For each explicit dependency, determine the release date of the highest version, then check if the dependency was released more than **5** years ago. Uses whitelist.txt, blacklist.txt and exclude.txt.
