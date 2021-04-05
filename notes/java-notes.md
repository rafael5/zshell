
Java: key CLI utilities
https://www.theserverside.com/video/Java-command-line-tools-every-JDK-developer-should-know


1. javac - compiler
2. javap - profiler (decompiler)
3. jstat - statistics
4. jdeps - dependencies
5. jar - java archive
6. 


7. The Java compiler: javac
The javac utility is the most important command-line interface (CLI) tool you will find in the JDK's bin directory. This is the Java compiler, and whether you use Maven, Gradle, the SpringSource IDE or Jenkins CI, it's this JDK tool that's used under the covers when Java source code gets compiled.

2. The Java profiler: javap
You can consider the Java command-line tool javap a complement to the javac utility. While javac compiles code, the javap utility reverses that compilation and provides information about a compiled class, such as the variable types it declares, along with the various methods and APIs it provides. The javap JDK tool doesn't completely return a compiled class into its original source code format, but it does provide insight on how the original source code was designed.


3. The Java statistics aggregator: jstat
Do you run into a runtime problem with your application? Why not turn on the jstat utility?

Two of the most commonly tuned Java virtual machine (JVM) parameters are the heap size and the Java Runtime Environment's (JRE) garbage collection algorithm. This statistics monitoring Java CLI tool provides class loader metrics, insights on how the just-in-time compiler works and, most importantly of all, data on how often garbage collection occurs. With these statistics in hand, you can make informed decisions about how to configure the JVM for optimum performance.

4. The Java dependency manager: jdeps
With Java 12, any code base that references internal APIs will not be allowed to compile. In the near future, even linking to a compiled component that references an internal API will trigger a build fail. If you want to know if any of your existing code uses or references an internal Java API, the jdeps Java CLI application will tell you. Also, if it does identify a reference to an internal API in your source code, it will often have suggestions about a newer, preferable API that you can use to replace the bad one.

5. The Java archive utility: jar
There's nothing particularly magical about the creation of a compressed archive file, which is the main purpose of the Java jar utility. But there are other features of this Java command-line tool that can be helpful as well. Along with the ability to create a compressed zip file, the jar utility can be used to specify the entry point for executable or embedded JAR files, configure options to be used when run on JRE and even log the internal contents of a JAR file. Jar can be useful when you want to compare one version of a code release to another. And, of course, along with the ability to compress files, the JDK tool jar can be used to extract the contents of an archive file as well.
