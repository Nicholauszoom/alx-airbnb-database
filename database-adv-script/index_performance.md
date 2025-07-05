# Indexes for Optimization

##  File: `database_index.sql`

### Index Optimization:
This file defines indexes for frequently queried columns to improve performance in large datasets.

#### Users Table:
- `email`: Speeds up authentication lookups.

#### Bookings Table:
- `user_id`: Speeds up joins and filters by user.
- `property_id`: Used in property-based booking queries.
- `check_in` and `check_out`: Improve date filtering performance.

#### Properties Table:
- `host_id`: Allows quick retrieval of properties listed by a host.
- `location`: Optimizes search queries by location.

These indexes are essential for improving query response time and system scalability.
