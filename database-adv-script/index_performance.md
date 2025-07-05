# Indexes for Optimization

##  File: `database_index.sql`

### Index Optimization:
This file defines indexes for frequently queries columns to improve performance in large data.

#### Users Table:
- `email`: Good performance query for authentication by users.email.

#### Bookings Table:
- `user_id`: Speeds up joins and filters by user.
- `property_id`: Good performance query when filter Booking by property_id.
- `start_date` and `end_date`: Good performance query when filter Bookings by start_date/end_date.

#### Properties Table:
- `host_id`: Good performance query when filter Properties by host/user.

Indexes to improve query performance 
