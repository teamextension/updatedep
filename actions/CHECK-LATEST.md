# check-latest

```
updatedep check-latest [options] [pom.xml|build.gradle path]
```

###
### Options:

 | Option      | Shortened Option | Description |
 |-------------|------------------|-------------|
 | --skipTests | -s               | Skip running unit and integration tests. |

####
### Description:
Check if the project builds and has no breaking changes when using the latest dependency versions.

### How It Works:
####
For each explicit dependency, perform a build using the latest version. The build will help determine if using the latest version is breaking or not. Uses blacklist.txt and exclude.txt. Make sure the project builds on the command line, not just in your IDE.
