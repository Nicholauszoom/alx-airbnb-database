#  Performance

"Bitmap Heap Scan on bookings_2023_q2 bookings  (cost=8.75..14.09 rows=2 width=146) (actual time=0.353..0.353 rows=0 loops=1)"
"  Recheck Cond: ((start_date >= '2023-04-01'::date) AND (start_date <= '2023-06-30'::date))"
"  ->  Bitmap Index Scan on bookings_2023_q2_pkey  (cost=0.00..8.75 rows=2 width=0) (actual time=0.347..0.347 rows=0 loops=1)"
"        Index Cond: ((start_date >= '2023-04-01'::date) AND (start_date <= '2023-06-30'::date))"
"Planning Time: 6.388 ms"
"Execution Time: 1.640 ms"
