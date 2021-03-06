-- Write a SQL query to delete all duplicate email entries in a table named Person, keeping only unique emails based on its smallest Id.
--
-- +----+------------------+
-- | Id | Email            |
-- +----+------------------+
-- | 1  | john@example.com |
-- | 2  | bob@example.com  |
-- | 3  | john@example.com |
-- +----+------------------+
-- Id is the primary key column for this table.
-- For example, after running your query, the above Person table should have the following rows:
--
-- +----+------------------+
-- | Id | Email            |
-- +----+------------------+
-- | 1  | john@example.com |
-- | 2  | bob@example.com  |
-- +----+------------------+
-- # Write your MySQL query statement below
DELETE p2
FROM
  person p1
  JOIN person p2 ON p1.Email = p2.Email
  AND p1.id < p2.id delete p1
from
  Person p1,
  Person p2
where
  p1.Email = p2.Email
  and p1.Id > p2.Id