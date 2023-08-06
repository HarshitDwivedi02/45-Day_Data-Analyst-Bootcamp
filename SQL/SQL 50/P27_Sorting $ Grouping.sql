# Write your MySQL query statement below
SELECT user_id , COUNT(follower_id) as followers_count
FROM Followers
Group BY user_id
Order BY user_id ASC;