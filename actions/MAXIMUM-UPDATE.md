# maximum-update

```
updatedep maximum-update [options] [pom.xml|build.gradle path]
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
Detect the highest dependency versions without breaking changes and minimal vulnerabilities, and updates the build file.
### How It Works:
####
For each explicit dependency, find the first non-breaking version, going from highest version to lowest. Scan the highest non-breaking version for vulnerabilities for additional information. Update the build file to use the maximum versions, then generate the updatedep-changes.html output file. Uses whitelist.txt, blacklist.txt and exclude.txt. Make sure the project builds on the command line, not just in your IDE.

