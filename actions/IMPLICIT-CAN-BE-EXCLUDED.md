# implicit-can-be-excluded

```
updatedep implicit-can-be-excluded [options] [pom.xml|build.gradle path]
```

###
### Options:

 | Option      | Shortened Option | Description |
 |-------------|------------------|-------------|
 | --skipTests | -s               | Skip running unit and integration tests. |

####
### Description:
Detect implicit dependencies with vulnerabilities that can be excluded to remove the vulnerability.
### How It Works:
####
For each implicit dependency with a vulnerability and also not an explicit dependency, exclude from the parent dependency and run a build. Suggests excluding the implicit dependency if the exclusion does not break the build. Uses whitelist.txt and blacklist.txt.
