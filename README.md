This repository is a project that uses Apache Maven to build three subprojects:

* **jdk-javadoc** - the JDK Javadoc Module
* **javadoc-tester** - the JDK Javadoc Tester
* **test-index-inherited** - a Javadoc unit test case

The project lets me use Apache NetBeans to edit, compile, package, debug, and test my changes to the Javadoc tool using JDK source code located outside of the project. Two properties in the parent Project Object Model (POM) define the locations of the JDK repository and extracted source code:

```xml
<properties>
    <!-- Local clone of the OpenJDK repository forked from 'openjdk/jdk' -->
    <jdk.git>${user.home}/tmp/github/jgneff/jdk</jdk.git>
    <!-- Source files extracted from the OpenJDK archive 'lib/src.zip' -->
    <jdk.src>${user.home}/opt/jdk-20/src</jdk.src>
</properties>
```

### Building

Build all three subprojects outside of NetBeans with the following command:

```console
$ mvn clean install
```

### Testing

Running the JDK Javadoc Module subproject invokes the Javadoc tool for the package `java.util.jar`. Run the same command outside of NetBeans with the shell scripts in the subproject's *bin* directory:

* **run.sh** - Runs Javadoc for testing
* **debug.sh** - Runs Javadoc for debugging

Running the Test Index Inherited subproject invokes the *main* method of the test class `pkg2.ClassC`.
