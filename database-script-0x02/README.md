# Sample Data Seeder – AirBnB Database

This directory contains SQL scripts used to populate the database with sample data for development and testing.

## Files

- `seed.sql`: Inserts sample users, properties, bookings, payments, messages, and reviews into the database.

## Usage

Run this script after creating the database schema:

```bash
psql -U your_user -d your_database -f seed.sql
