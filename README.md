# Spring Boot Annotations

This README provides a brief explanation of some essential Spring Boot annotations.

### Core Annotations

- `@SpringBootApplication`: Combines `@Configuration`, `@EnableAutoConfiguration`, and `@ComponentScan` for bootstrapping a Spring application.
- `@Getter`, `@Setter`: Lombok annotations that automatically generate getter and setter methods for class fields.
- `@ControllerAdvice`: Allows centralized handling of exceptions across multiple controllers.
- `@Configuration`: Marks a class as a source of bean definitions for the Spring IoC container.
- `@RestController`: Combines `@Controller` and `@ResponseBody` to simplify RESTful web services creation.
- `@RequestMapping`: Maps HTTP requests to handler methods in controllers.
- `@Entity`: Specifies that a class is a JPA entity mapped to a database table.

### Request Mapping Annotations

- `@GetMapping`: Maps HTTP GET requests to specific handler methods.
- `@PutMapping`: Maps HTTP PUT requests to specific handler methods.
- `@DeleteMapping`: Maps HTTP DELETE requests to specific handler methods.

### JPA Inheritance Annotations

- `@MappedSuperclass`: Marks a class as a base class whose properties are inherited by subclasses in the entity model.
- `@Id`: Specifies the primary key of an entity.
- `@Inheritance`: Defines the inheritance strategy for entity classes (options include `InheritanceType.TABLE_PER_CLASS`, `InheritanceType.SINGLE_TABLE`, and `InheritanceType.JOINED`).
- `@DiscriminatorValue`: Sets the value to identify the entity in single-table inheritance.
