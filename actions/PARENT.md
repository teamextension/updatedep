# suggest-tests

```
updatedep suggest-tests [options] [pom.xml|build.gradle path]
```

###
### Options:

 | Option                                                             | Shortened Option                                         | Description                              |
 |--------------------------------------------------------------------|----------------------------------------------------------|------------------------------------------|
 | `--dependency=<groupId:artifactId or groupId:artifactId:version>`  | `-d=<groupId:artifactId or groupId:artifactId:version>`  | Perform action to the passed dependency. |

####
### Description:
Find the top level explicit dependency of an implicit dependency.
### How It Works:
####
Gets the parent of the passed dependency from the dependency tree of the project. The --dependency parameter is required.
