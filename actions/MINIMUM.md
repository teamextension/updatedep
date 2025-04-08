# minimum

```
updatedep minimum [options] [pom.xml|build.gradle path]
```

###
### Options:

 | Option                                                            | Shortened Option                                        | Description                              |
 |-------------------------------------------------------------------|---------------------------------------------------------|------------------------------------------|
 | --ignoreLowVulnerabilities                                        | -i                                                      | Ignore low vulnerabilities.              |
 | --skipTests                                                       | -s                                                      | Skip running unit and integration tests. |
 | `--dependency=<groupId:artifactId or groupId:artifactId:version>` | `-d=<groupId:artifactId or groupId:artifactId:version>` | Perform action to the passed dependency. |

####
### Description:
Detect the minimum dependency versions needed to remove vulnerabilities, without breaking changes.
### How It Works:
####
For each explicit dependency, find the minimal version greater than the current version that builds and has no vulnerability. Uses whitelist.txt, blacklist.txt, and exclude.txt. Make sure the project builds on the command line, not just in your IDE.
