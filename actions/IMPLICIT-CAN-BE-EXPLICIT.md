# implicit-can-be-explicit

```
updatedep implicit-can-be-explicit [pom.xml|build.gradle path]
```

####
### Description:
Detect implicit dependencies with vulnerabilities that can be replaced with non-vulnerable explicit dependencies.
### How It Works:
####
For each implicit dependency with a vulnerability, look for a higher version with no vulnerability, make that explicit and run a build. Suggest the explicit non-breaking dependency if found. Uses whitelist.txt, blacklist.txt and exclude.txt.
