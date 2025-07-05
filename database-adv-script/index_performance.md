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

# Performance before Indexing

"HashAggregate  (cost=29.64..30.94 rows=130 width=226) (actual time=0.373..0.375 rows=2 loops=1)"
"  Group Key: users.name"
"  Batches: 1  Memory Usage: 40kB"
"  ->  Hash Join  (cost=12.93..27.74 rows=380 width=234) (actual time=0.358..0.360 rows=2 loops=1)"
"        Hash Cond: (bookings.user_id = users.id)"
"        ->  Seq Scan on bookings  (cost=0.00..13.80 rows=380 width=32) (actual time=0.291..0.292 rows=2 loops=1)"
"        ->  Hash  (cost=11.30..11.30 rows=130 width=234) (actual time=0.033..0.033 rows=2 loops=1)"
"              Buckets: 1024  Batches: 1  Memory Usage: 9kB"
"              ->  Seq Scan on users  (cost=0.00..11.30 rows=130 width=234) (actual time=0.025..0.026 rows=2 loops=1)"
"Planning Time: 11.267 ms"
"Execution Time: 1.254 ms"

# Performance After Indexing
For Execution time and Planning Time indexing is ineffective for small dataset, thus why slightly here we have high time morte than before indexing

"GroupAggregate  (cost=2.10..2.14 rows=2 width=226) (actual time=0.265..0.267 rows=2 loops=1)"
"  Group Key: users.name"
"  ->  Sort  (cost=2.10..2.11 rows=2 width=234) (actual time=0.260..0.261 rows=2 loops=1)"
"        Sort Key: users.name"
"        Sort Method: quicksort  Memory: 25kB"
"        ->  Nested Loop  (cost=0.00..2.09 rows=2 width=234) (actual time=0.065..0.066 rows=2 loops=1)"
"              Join Filter: (users.id = bookings.user_id)"
"              Rows Removed by Join Filter: 1"
"              ->  Seq Scan on bookings  (cost=0.00..1.02 rows=2 width=32) (actual time=0.041..0.042 rows=2 loops=1)"
"              ->  Materialize  (cost=0.00..1.03 rows=2 width=234) (actual time=0.009..0.009 rows=2 loops=2)"
"                    ->  Seq Scan on users  (cost=0.00..1.02 rows=2 width=234) (actual time=0.012..0.012 rows=2 loops=1)"
"Planning Time: 13.557 ms"
"Execution Time: 1.475 ms"
