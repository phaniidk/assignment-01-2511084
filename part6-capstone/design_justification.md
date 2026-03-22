## Storage Systems

The system uses multiple storage solutions tailored to different requirements. A relational OLTP database such as PostgreSQL is used to store structured patient records, appointments, and billing data, as it ensures data consistency and supports real-time transactions. For real-time ICU vitals, a streaming platform like Kafka is used to ingest high-frequency data, which is then stored in a Data Lake (e.g., AWS S3) for scalable and cost-effective storage of raw data. A Data Warehouse such as Snowflake or BigQuery is used for analytical queries and reporting, enabling efficient generation of monthly reports like bed occupancy and departmental costs. Additionally, a Vector Database such as FAISS or Pinecone is used to store embeddings of patient records, allowing doctors to query patient history in natural language and retrieve semantically relevant results.

## OLTP vs OLAP Boundary

The OLTP system includes the hospital’s transactional database where patient admissions, treatments, and billing operations occur. This system is optimized for real-time updates and ensures data integrity. The OLAP system begins once data is extracted from the OLTP database through ETL pipelines and loaded into the Data Warehouse. The Data Warehouse is optimized for analytical queries, aggregations, and reporting. The Data Lake acts as an intermediate storage layer, holding raw and semi-structured data before it is processed and moved into analytical systems. Thus, the boundary lies at the ETL/ELT layer, where transactional data is transformed into analytical datasets.

## Trade-offs

One significant trade-off in this architecture is the increased complexity due to the use of multiple systems such as OLTP databases, Data Lakes, Data Warehouses, and Vector Databases. While this improves scalability and performance, it also introduces challenges in data integration, maintenance, and latency. To mitigate this, a well-designed data pipeline using tools like Apache Airflow can be implemented to automate data movement and ensure consistency across systems. Additionally, adopting a Data Lakehouse approach in the future could help unify storage and reduce complexity while maintaining performance.

