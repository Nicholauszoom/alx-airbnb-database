# Join Queries – Airbnb Clone Database

This directory contains advanced SQL queries demonstrating the use of JOIN operations in the context of an Airbnb clone database.

## File: joins_queries.sql

### Included Queries:
- **INNER JOIN:** Retrieves all bookings along with the users who made those bookings.
- **LEFT JOIN:** Retrieves all properties and their reviews, including those with no reviews.
- **FULL OUTER JOIN:** Retrieves all users and all bookings, including unmatched records from either table (note: simulated in PostgreSQL).

### Purpose:
These queries help explore relational data by connecting multiple tables (e.g., `users`, `bookings`, `properties`, `reviews`) and extracting meaningful insights using SQL JOIN operations.

---

## Note
If your database does not support `FULL OUTER JOIN` (like PostgreSQL), use the alternative simulated version using `UNION`.

