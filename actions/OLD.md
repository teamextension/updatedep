# old

```
updatedep old [options] [pom.xml|build.gradle path]
```

###
### Options:

 | Option                                                            | Shortened Option                                        | Description                              |
 |-------------------------------------------------------------------|---------------------------------------------------------|------------------------------------------|
 | --ignoreLowVulnerabilities                                        | -i                                                      | Ignore low vulnerabilities.              |

####
### Description:
Detect dependencies whose last release is more than 3 years ago.
### How It Works:
####
For each explicit dependency, determine the release date of the highest version, then check if the dependency was released more than **3** years ago. Uses whitelist.txt, blacklist.txt and exclude.txt.
