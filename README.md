# CustomEntityDemo

In SAP's ABAP RESTful Application Programming Model (RAP), integrating remote OData services involves two key components: Custom Entities and Service Consumption Models.

Custom Entities:

Custom Entities in RAP represent data models that don't directly correspond to database tables but instead retrieve data through custom logic, such as remote function calls. This approach is particularly useful when accessing data from external systems via Remote Function Calls (RFC). To implement a Custom Entity for a remote OData service:

Define the Custom Entity: Specify the entity's structure, including elements and their data types.

Implement Data Retrieval Logic: Create an ABAP class that fetches data from the remote system, often using RFC-enabled function modules.

Reference the Implementation Class: In the Custom Entity definition, link the ABAP class to handle data retrieval.

Expose as a Service: Create a service definition and binding to make the Custom Entity accessible via OData.

This setup allows seamless integration of external data into RAP-based applications. 
SAP

Service Consumption Models:

Service Consumption Models facilitate the integration of external OData services into ABAP applications by generating proxy classes based on the service's metadata. This process involves:

Obtain the Service Metadata (EDMX) File: Retrieve the metadata document from the remote OData service, typically by appending $metadata to the service URL.

Create the Service Consumption Model: Use the ABAP Development Tools (ADT) wizard to generate proxy classes from the EDMX file. These classes provide methods corresponding to the OData service's operations.

Implement Outbound Service Calls: Utilize the generated proxy classes within your ABAP code to interact with the remote OData service, enabling operations like data retrieval and manipulation.

This model streamlines the consumption of external OData services, promoting efficient integration and code management. 
SAP COMMUNITY

By leveraging Custom Entities and Service Consumption Models, developers can effectively integrate remote OData services into their ABAP applications, enhancing functionality and enabling seamless data access across systems.
