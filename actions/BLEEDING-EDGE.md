# bleeding-edge

```
updatedep bleeding-edge [pom.xml|build.gradle path]
```

####
Detect dependencies with versions that were released less than a month ago.

####
For each explicit dependency, determine the release date of the explicit version, then check if the dependency was released less than a month ago. Uses [blacklist.txt](https://github.com/teamextension/updatedep/blob/main/actions/BLACKLIST.md).
