#!/bin/bash
# Runs Javadoc for debugging
# Run this script from the project's base directory.

# The JDK home directory and its extracted source files
jdk_dir="$HOME/opt/jdk-20"
jdk_src="$jdk_dir/src"

"$jdk_dir/bin/java" --patch-module jdk.javadoc=target/classes \
    -agentlib:jdwp=transport=dt_socket,server=y,address=*:8000 \
    jdk.javadoc.internal.tool.Main --source-path "$jdk_src/java.base" \
    -d docs -notimestamp -Xdoclint:none java.util.jar "$@"
