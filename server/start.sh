#!/bin/bash
java -server -Xms4G -Xmx5G \
-XX:+UseG1GC -XX:+UnlockExperimentalVMOptions -XX:+ParallelRefProcEnabled \
-XX:+DisableExplicitGC -XX:+UseStringDeduplication \
-XX:G1HeapRegionSize=8M \
-XX:InitiatingHeapOccupancyPercent=20 \
-XX:G1ReservePercent=10 \
-XX:MaxGCPauseMillis=25 \
-XX:+PerfDisableSharedMem \
-XX:+UseCompressedOops -XX:+UseCompressedClassPointers \
-XX:+OptimizeStringConcat \
-XX:+DoEscapeAnalysis \
-XX:+TieredCompilation -XX:TieredStopAtLevel=1 \
-XX:ParallelGCThreads=2 -XX:ConcGCThreads=1 -XX:CICompilerCount=2 \
-jar server.jar nogui