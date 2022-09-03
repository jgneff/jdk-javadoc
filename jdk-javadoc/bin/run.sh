#!/bin/bash
# Runs Javadoc for testing
# Run this script from the project's base directory.

# The JDK home directory and its extracted source files
jdk_dir="$HOME/opt/jdk-20"
jdk_src="$jdk_dir/src"

"$jdk_dir/bin/java" --patch-module jdk.javadoc=target/classes \
    jdk.javadoc.internal.tool.Main --source-path "$jdk_src/java.base" \
    -d docs -notimestamp -Xdoclint:none java.util.jar "$@"
