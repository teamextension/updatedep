# unused

```
updatedep unused [options] [pom.xml|build.gradle path]
```

###
### Options:

| Option                                                            | Shortened Option                                        | Description                              |
|-------------------------------------------------------------------|---------------------------------------------------------|------------------------------------------|
| --ignoreLowVulnerabilities                                        | -i                                                      | Ignore low vulnerabilities.              |
| --skipTests                                                       | -s                                                      | Skip running unit and integration tests. |

####
### Description:
Detect dependencies that are unused and can be removed.
### How It Works:
####
For each explicit dependency that is also not an implicit dependency, remove the explicit dependency and run a build. A successful build means the removed dependency is likely unused, and needs further investigation. For each unused dependency, run a vulnerability scan and display vulnerabilities that will be resolved if the dependency is removed. Uses whitelist.txt and blacklist.txt. Make sure the project builds on the command line, not just in your IDE.
