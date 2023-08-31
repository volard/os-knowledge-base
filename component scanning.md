`@ComponentScan` - configures which packages to scan for classes with annotation configuration
# Examples
```java
@Configuration 
@ComponentScan(basePackages = "com.baeldung.annotations") //its array 
class VehicleFactoryConfig {}

@Configuration 
@ComponentScan(basePackageClasses = VehicleFactoryConfig.class) //its array
class VehicleFactoryConfig {}
```

In Java 8 repeating annotations feature available