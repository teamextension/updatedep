# vulnerable

 The process begins by executing the Maven or Gradle dependency tree to resolve all dependencies and generate a comprehensive list of both explicit and implicit dependencies. Once the dependencies are identified, a vulnerability scan is conducted to assess their security risks. The results are then analyzed, and for each scanned dependency, the process highlights the dependency with vulnerabilities and without vulnerabilities. Lastly an HTML file will be generated, which contains the results.

###
### Usage:
```
updatedep <action> [options] [pom.xml|build.gradle path] 
```

```
updatedep vulnerable path-to-build-file
```
###
### Optional parameters: 

 | Option                     | Shortened Option | Description                 |
 |----------------------------|------------------|-----------------------------|
 | --ignoreLowVulnerabilities |        -i        | Ignore low vulnerabilities. |

###
### Uses the following files: 
 - blacklist.txt - dependencies that are present in this file will show a message that the dependency is blacklisted.
 - whitelist.txt - dependencies that are present in this file will not be scanned.
