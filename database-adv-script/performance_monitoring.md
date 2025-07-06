
-- =======================================
-- Step 1: Analyze the Original Query
-- =======================================

-- Query: Fetch bookings and user info for a date range
EXPLAIN ANALYZE
SELECT 
    bookings.id,
    users.name AS user_name,
    bookings.start_date,
    bookings.end_date
FROM 
    bookings
JOIN 
    users ON bookings.user_id = users.id
WHERE 
    bookings.start_date BETWEEN '2023-04-01' AND '2023-06-30';

-- =======================================
-- Step 2: Identify Bottlenecks
-- =======================================
-- - No index on `start_date`, causing sequential scan
-- - Join on `user_id` without index

-- =======================================
-- Step 3: Schema Adjustments
-- =======================================

-- Create index on start_date to speed up filtering
CREATE INDEX IF NOT EXISTS idx_bookings_start_date ON bookings(start_date);

-- Create index on user_id to optimize the join
CREATE INDEX IF NOT EXISTS idx_bookings_user_id ON bookings(user_id);

-- Optional: add index on users.id if missing (PK usually exists)
-- CREATE INDEX IF NOT EXISTS idx_users_id ON users(id);

-- =======================================
-- Step 4: Re-analyze After Optimization
-- =======================================

EXPLAIN ANALYZE
SELECT 
    bookings.id,
    usersname AS user_name,
    bookings.start_date,
    bookings.end_date
FROM 
    bookings
JOIN 
    users ON bookings.user_id = users.id
WHERE 
    bookings.start_date BETWEEN '2023-04-01' AND '2023-06-30';

