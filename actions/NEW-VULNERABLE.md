# minimum

```
updatedep new-vulnerable [options] [pom.xml|build.gradle path]
```

###
### Options:

 | Option                                                            | Shortened Option                                        | Description                              |
 |-------------------------------------------------------------------|---------------------------------------------------------|------------------------------------------|
 | --ignoreLowVulnerabilities                                        | -i                                                      | Ignore low vulnerabilities.              |

####
### Description:
Detect new dependencies with vulnerabilities, compared to the previous new-vulnerable run.
### How It Works:
####
For each dependency, explicit and implicit, run a vulnerability scan and display known security vulnerabilities that are newly detected, when compared to the previous new-vulnerable run. Last scan results are saved in the current working directory for comparison purposes. Uses whitelist.txt and blacklist.txt. Make sure the project builds on the command line, not just in your IDE.
