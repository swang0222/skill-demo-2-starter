
CLASSPATH = lib/junit-4.13.2.jar:lib/hamcrest-core-1.3.jar:.

LinkedListTest.class: LinkedListTest.java LinkedList.class
	javac -g -cp $(CLASSPATH) LinkedListTest.java

LinkedList.class: LinkedList.java
	javac -g -cp $(CLASSPATH) LinkedList.java

test: LinkedListTest.class
	java -cp $(CLASSPATH) org.junit.runner.JUnitCore LinkedListTest
