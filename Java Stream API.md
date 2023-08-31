> It is a sequence of elements that can be processed in parallel or sequentially

Stream pipeline consists of: 
1. source
2. intermediate operations
3. terminal operation

# Examples
```java
List<String> names = Arrays.asList("John", "Jane", "Adam", "Eve")

List<String> filteredNames = names.stream()
	.filter(name -> name.startsWith("J"))
	.collect(Collectors.toList()); // collect the filtered elements into a new List
```
