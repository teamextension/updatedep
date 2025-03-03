# maximum-semantic

```
updatedep maximum-semantic [options] [pom.xml|build.gradle path]
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
Detect the highest major and minor dependency versions without vulnerabilities and breaking changes.
### How It Works:
####
For each explicit dependency, find the first non-breaking version, going from highest version to lowest. Find the highest for the major version, the minor version and the patch version. For example, if current version is 1.1.1, the highest patch version might be 1.1.9, the highest minor version might be 1.7.3, and the highest major version might be 3.1.2. Scan the highest non-breaking version for vulnerabilities for additional information. Uses whitelist.txt, blacklist.txt and exclude.txt.
