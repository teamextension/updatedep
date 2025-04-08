# runtime

```
updatedep runtime [options] [pom.xml|build.gradle path]
```

###
### Options:

 | Option         | Shortened Option | Description                               |
 |----------------|------------------|-------------------------------------------|
 | --skipTests    | -s               | Skip running unit and integration tests.  |

####
### Description:
Detect dependencies that can be marked as runtime.
### How It Works:
####
For each explicit non-runtime dependency, if it is also implicit, change the scope to runtime and run the build. If the build is successful, the dependency can be classified as runtime. Uses blacklist.txt. Make sure the project builds on the command line, not just in your IDE.
