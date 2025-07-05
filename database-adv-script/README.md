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


---

## File: `subqueries.sql` *(optional: if you separate subqueries)*

This file includes:

### Subquery Examples:
- **Properties with High Ratings:** Uses a subquery to return all properties with an average rating greater than 4.0.
- **Active Users:** Uses a correlated subquery to return users who have made more than 3 bookings.

---

## Notes

- These queries are intended to demonstrate real-world relational database operations.
- Make sure your database contains sample data for `users`, `properties`, `bookings`, and `reviews` tables to test these queries.
- For MySQL users: use `UNION` to simulate `FULL OUTER JOIN` as it's not natively supported.

---

## File: `aggregations_and_window_functions.sql` *(New)*

### Included aggregations_and_window_functions Queries:
- **Total Bookings Per User:** Uses `COUNT()` and `GROUP BY` to find how many bookings each user has made.
- **Property Booking Rankings:** Uses `RANK()` window function to rank properties by number of bookings received.

---

## Technologies

- SQL (PostgreSQL / MySQL)
- Relational database design
- Aggregations and filtering
- Window functions for analytics

