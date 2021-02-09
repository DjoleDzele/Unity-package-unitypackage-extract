# Unity-package-unitypackage-extract
Linux bash script for extracting Unity packages

Very useful in case when package size is big, and when it would take very long time to import it to Unity especially when it comes to large textures collections, this can help to explore contents first and import only whats needed for example. 

**Usage**

Make *UnityPackageExtract.sh* script executable, if script and package are in the same directory simply run this command in terminal: 

```shellscript
./UnityPackageExtract.sh "SomePackage.unitypackage"
```
Package will be extracted to new folder located in same directory from where the script was called
