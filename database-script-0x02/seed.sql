
---

## `seed.sql` (Sample Data for All Tables)

```sql
-- Users
INSERT INTO users (id, name, email, password) VALUES
  ('c56a4180-65aa-42ec-a945-5fd21dec0538', 'Alice Johnson', 'alice@example.com', 'hashedpassword1'),
  ('c56a4180-65aa-42ec-a945-5fd21dec0539', 'Bob Smith', 'bob@example.com', 'hashedpassword2');

-- Properties
INSERT INTO properties (id, owner_id, title, description, location, price) VALUES
  ('a1a1a1a1-1111-1111-1111-111111111111', 'c56a4180-65aa-42ec-a945-5fd21dec0538', 'Cozy Cottage', 'A nice cottage in the woods.', 'Nairobi', 80.00),
  ('b2b2b2b2-2222-2222-2222-222222222222', 'c56a4180-65aa-42ec-a945-5fd21dec0539', 'City Apartment', 'Modern flat in the city center.', 'Dar es Salaam', 120.00);

-- Bookings
INSERT INTO bookings (id, user_id, property_id, start_date, end_date, status) VALUES
  ('11112222-3333-4444-5555-666677778888', 'c56a4180-65aa-42ec-a945-5fd21dec0539', 'a1a1a1a1-1111-1111-1111-111111111111', '2025-07-01', '2025-07-05', 'confirmed'),
  ('99990000-aaaa-bbbb-cccc-ddddeeeeffff', 'c56a4180-65aa-42ec-a945-5fd21dec0538', 'b2b2b2b2-2222-2222-2222-222222222222', '2025-08-10', '2025-08-15', 'pending');

-- Payments
INSERT INTO payments (id, booking_id, amount, payment_date, method, status) VALUES
  ('abcdabcd-1234-5678-aaaa-bbbbccccdddd', '11112222-3333-4444-5555-666677778888', 400.00, '2025-06-25 10:00:00', 'credit_card', 'completed'),
  ('eeeeffff-9999-0000-1111-222233334444', '99990000-aaaa-bbbb-cccc-ddddeeeeffff', 600.00, '2025-07-20 14:30:00', 'mobile_money', 'pending');

-- Messages
INSERT INTO messages (id, sender_id, receiver_id, content, sent_at) VALUES
  ('msg001-aaaa-bbbb-cccc-dddd', 'c56a4180-65aa-42ec-a945-5fd21dec0538', 'c56a4180-65aa-42ec-a945-5fd21dec0539', 'Hi Bob, is your apartment available next month?', '2025-06-24 09:00:00'),
  ('msg002-eeee-ffff-gggg-hhhh', 'c56a4180-65aa-42ec-a945-5fd21dec0539', 'c56a4180-65aa-42ec-a945-5fd21dec0538', 'Yes, feel free to book!', '2025-06-24 09:10:00');

-- Reviews
INSERT INTO reviews (id, reviewer_id, property_id, rating, comment) VALUES
  ('rev001-1111-2222-3333-4444', 'c56a4180-65aa-42ec-a945-5fd21dec0539', 'a1a1a1a1-1111-1111-1111-111111111111', 5, 'Amazing cottage, peaceful and clean.'),
  ('rev002-aaaa-bbbb-cccc-dddd', 'c56a4180-65aa-42ec-a945-5fd21dec0538', 'b2b2b2b2-2222-2222-2222-222222222222', 4, 'Great location, but noisy at night.');
