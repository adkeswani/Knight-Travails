Using Ant:
- To run the program and provide squares via a prompt:
ant

- To run the program with squares as command-line arguments:
ant -Dstart=<start square> -Ddestination=<destination square>

- To compile, package the program as a jar and run it:
ant jar
java -jar ./target/jar/Knight-Travails.jar <start square> <destination square>

- To run the tests:
ant test

- To generate the documentation:
ant docs


Using command line:
- To compile and run the program:
mkdir ./target
mkdir ./target/classes
javac -d ./target/classes ./src/main/java/com/ir/knighttravails/*.java ./src/main/java/com/ir/knighttravails/board/*.java ./src/main/java/com/ir/knighttravails/board/components/*.java ./src/main/java/com/ir/knighttravails/board/path/*.java -classpath ./target/classes:./lib/junit-4.10.jar:./lib/commons-lang-2.6.jar
java -cp ./target/classes:./lib/junit-4.10.jar:./lib/commons-lang-2.6.jar com.ir.knighttravails.KnightTravailsSolver <start square> <destination square>

- To compile and run the tests:
mkdir ./target
mkdir ./target/test-classes
javac -d ./target/classes ./src/main/java/com/ir/knighttravails/*.java ./src/main/java/com/ir/knighttravails/board/*.java ./src/main/java/com/ir/knighttravails/board/components/*.java ./src/main/java/com/ir/knighttravails/board/path/*.java ./src/test/java/com/ir/knighttravails/*.java ./src/test/java/com/ir/knighttravails/board/*.java ./src/test/java/com/ir/knighttravails/board/components/*.java ./src/test/java/com/ir/knighttravails/board/path/*.java -classpath ./target/classes:./lib/junit-4.10.jar:./lib/commons-lang-2.6.jar
java -cp ./target/classes:./lib/junit-4.10.jar:./lib/commons-lang-2.6.jar org.junit.runner.JUnitCore com.ir.knighttravails.KnightTravailsTestSuite

- To generate the documentation
mkdir ./target
mkdir ./target/docs
javadoc -classpath ./lib/junit-4.10.jar:./lib/commons-lang-2.6.jar -sourcepath ./src/main/java -windowtitle 'The Knight&#39;s Travails API' -d ./target/docs -subpackages com.ir.knighttravails 
