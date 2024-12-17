# vulnerable

 The process begins by executing the Maven or Gradle dependency tree to resolve all dependencies and generate a comprehensive list of both explicit and implicit dependencies. Once the dependencies are identified, a vulnerability scan is conducted to assess their security risks. The results are then analyzed, and for each scanned dependency, the process highlights the dependency with vulnerabilities and without vulnerabilities. Lastly an HTML file will be generated, which contains the results.

###
Uses blacklist.txt and whitelist.txt.

###
### Usage:
```
updatedep <action> [options] [pom.xml|build.gradle path] 
```

###
### Optional parameters: 

 | Shortened Option                     | Option | Description                 |
 |----------------------------|------------------|-----------------------------|
 | -i |        --ignoreLowVulnerabilities        | Ignore low vulnerabilities. |


