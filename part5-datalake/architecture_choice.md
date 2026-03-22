## Architecture Recommendation

For a fast-growing food delivery startup handling diverse data such as GPS logs, customer reviews, payment transactions, and restaurant images, a Data Lakehouse architecture is the best choice.

First, the system needs to handle multiple data formats including structured data (transactions), semi-structured data (JSON logs), and unstructured data (text reviews and images). A traditional data warehouse is not suitable for such diverse data types, while a data lake can store them but lacks strong data management and performance optimization. A data lakehouse combines the flexibility of a data lake with the structure and performance of a data warehouse.

Second, scalability is critical for a growing startup. A data lakehouse allows storage of massive volumes of data at low cost while supporting both batch and real-time processing. This is essential for handling continuous GPS tracking data and large-scale user interactions.

Third, analytics and machine learning capabilities are important. Customer reviews and GPS data can be used for sentiment analysis, route optimization, and demand forecasting. A data lakehouse supports advanced analytics and integrates well with machine learning tools.

Therefore, a data lakehouse provides the best balance of flexibility, scalability, and performance, making it ideal for modern, data-intensive applications like a food delivery platform.