# explicit-can-be-implicit

```
updatedep explicit-can-be-implicit [options] [pom.xml|build.gradle path]
```

###
### Options:

 | Option      | Shortened Option | Description |
 |-------------|------------------|-------------|
 | --skipTests | -s               | Skip running unit and integration tests. |

####
### Description:
Detect unnecessary explicit dependencies since they are already implicit dependencies.

### How It Works:
####
For each explicit dependency, check if the dependency is also an implicit dependency with the same version. If the versions match, the explicit dependency can be made implicit. Whenever a dependency is removed, the dependency tree is recreated to get the latest dependency versions. Uses whitelist.txt and blacklist.txt. Make sure the project builds on the command line, not just in your IDE.
