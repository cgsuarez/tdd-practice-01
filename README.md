# tdd-practice-01

Spring Boot project for TDD practice. Base package: `ec.edu.epn`.

## Requirements

- Java 17+
- Maven 3.9+ (`mvn -v` to verify)

## Running the application

From the project root:

```bash
mvn spring-boot:run
```

The app will start on [http://localhost:8080](http://localhost:8080).

Other useful commands:

```bash
mvn clean package          # build the jar into target/
mvn test                   # run unit tests
java -jar target/tdd-practice-01-0.0.1-SNAPSHOT.jar
```

## Database

The project uses an **in-memory H2 database** configured in MySQL compatibility
mode. No external database setup is required — it is created fresh on every
startup.

Connection details (see `src/main/resources/application.properties`):

| Property | Value |
| --- | --- |
| JDBC URL | `jdbc:h2:mem:virtualstore;DB_CLOSE_DELAY=-1;MODE=MySQL` |
| Driver | `org.h2.Driver` |
| Username | `sa` |
| Password | *(empty)* |

### Schema and seed data (Flyway)

Migrations run automatically on startup from `src/main/resources/db/migration`:

- `V1__create_virtual_store_schema.sql` — creates tables: `categories`,
  `customers`, `products`, `orders`, `order_items`.
- `V2__seed_sample_data.sql` — inserts sample rows for each table.

JPA is set to `ddl-auto=validate`, so **Flyway owns the schema** — add a new
`V{n}__{description}.sql` file for any schema change instead of relying on
Hibernate auto-DDL.

### H2 console

While the app is running, open the web console at:

[http://localhost:8080/h2-console](http://localhost:8080/h2-console)

Use the JDBC URL, username, and password from the table above. Because the
database is in-memory, all data is lost when the application stops.

## Project layout

```
src/main/java/ec/edu/epn/
├── TddPractice01Application.java
├── model/         # JPA entities (Category, Customer, Product, Order, OrderItem, OrderStatus)
└── repository/    # Spring Data JPA repositories

src/main/resources/
├── application.properties
└── db/migration/  # Flyway migrations
```

## Testing

JUnit 5 and Mockito are on the test classpath via `spring-boot-starter-test`.

```bash
mvn test
```
