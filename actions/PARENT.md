# parent

```
updatedep parent [options] [pom.xml|build.gradle path]
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
Retrieves the parent of the specified implicit dependency using the project's dependency tree. The --dependency parameter is required.
