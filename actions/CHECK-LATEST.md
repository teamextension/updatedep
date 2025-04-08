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
Detect dependencies with versions that were released less than a month ago.

### How It Works:
####
For each explicit dependency, determine the release date of the explicit version, then check if the dependency was released less than a month ago. Uses blacklist.txt. Make sure the project builds on the command line, not just in your IDE.
