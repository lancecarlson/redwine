# java -Djava.ext.dirs=jars clojure.main src/redwine.clj
# java -DDEBUG -cp $PWD -Djava.ext.dirs=jars clojure.main src/redwine/server.clj

JAVA=/System/Library/Frameworks/JavaVM.framework/Versions/1.6/Home/bin/java
EXT="$(find $PWD/jars -mindepth 1 -maxdepth 1 -print0 | tr \\0 \:)"
CP=$EXT$PWD
CMD="$JAVA -cp $CP -DDEBUG clojure.main src/redwine/jetty.clj"

echo $CMD
$CMD