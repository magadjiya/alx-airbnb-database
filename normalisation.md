# How I normalized my DataBase in [requirements](ERD/requirements.md) to 3NF

A brief background for those unfamilar with database management systems, when we make an [ERD](https://google.com)

1NF - no repetitions, 2NF - make everything dependent on primary key, 3NF - make them atomic i.e. no calculated values.

1. I made sure no attributes we duplicated, e.g no user_email under User and Booking.
- It would seem interesting that created_at is repeated everywhere, this is not against normalisation but rather is a timestamp, we want to kee track of when our users joined, when they make payments, bookings etc

2. I verified the table and made sure all attributes are dependent on the primary key (PK)

3. I made sure that all pttributes are indivisible and not a product of two or more attributes