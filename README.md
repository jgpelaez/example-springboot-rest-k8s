# example-springboot-rest-k8s

Example application for spring boot ready to be deployed on k8s and OpenShift using Helm.


## Aplication specification

It is RESTful application with Java implemented with Spring Boot.

Api support:

● Create a new product
● Retrieve a list of all products
● Update a product (Optional)
● Delete a product (soft deletion) (Optional)

## Run the application

Local Maven run:

```
mvn spring-boot:run
```

### Application api

Application api can be found with swagger in the url:


http://localhost:8080/swagger-ui.html

![swagger](2020-03-23 15_58_29-Swagger UI.png)

#### Get list of products
http://localhost:8080/product