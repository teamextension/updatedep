# explicit-can-be-implicit

```
updatedep explicit-can-be-implicit [options] [pom.xml|build.gradle path]
```

###
Options:\
-s, --skipTests

###
Detect unnecessary explicit dependencies since they are already implicit dependencies.

###
For each explicit dependency, check if the dependency is also an implicit dependency with the same version. If the versions match, the explicit dependency can be made implicit. Whenever a dependency is removed, the dependency tree is recreated to get the latest dependency versions. Uses [whitelist.txt](https://github.com/teamextension/updatedep/blob/main/actions/WHITELIST.md) and [blacklist.txt](https://github.com/teamextension/updatedep/blob/main/actions/BLACKLIST.md). Make sure the project builds on the command line, not just in your IDE.
