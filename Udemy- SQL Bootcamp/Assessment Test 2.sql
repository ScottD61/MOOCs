#Assessment Test 2

#1 - good
SELECT * FROM cd.facilities;

#2 - good
SELECT name, membercost
FROM cd.facilities;

#3 - good
SELECT name, SUM(membercost)
FROM cd.facilities
GROUP BY name
HAVING SUM(membercost) > 0;

#4 - wrong
SELECT name, facid, membercost, SUM(membercost) 
FROM cd.facilities
GROUP BY name, facid, membercost
HAVING SUM(membercost) < (monthlymaintenance)/50;

#5 - good
SELECT facid, name
FROM cd.facilities
WHERE name LIKE '%Tennis%';

#6 - good
SELECT facid, name, membercost, 
guestcost, initialoutlay, 
monthlymaintenance
FROM cd.facilities
WHERE facid IN (1,5);

#7 - good
SELECT memid, surname, firstname, joindate
FROM cd.members
WHERE joindate >= '2012-09-01’;

#8 - wrong
SELECT DISTINCT surname
FROM cd.members
LIMIT 10;

#9 - good
SELECT surname, firstname, joindate
FROM cd.members
ORDER BY joindate DESC
LIMIT 1;

#10 - good
SELECT COUNT(name)
FROM cd.facilities
WHERE guestcost > 10;

#11 - wrong
SELECT memid, COUNT(recommendedby)
FROM cd.members
GROUP BY memid
ORDER BY memid DESC; 

#12 - wrong (didn’t read question right)
SELECT facid, SUM(slots) 
FROM cd.bookings
WHERE starttime >= '2012-9-1'
GROUP BY facid
ORDER BY SUM(slots) DESC;

#13 - wrong

#14 - NOT WORKING ??? 
SELECT bookings.starttime, facilities.name
FROM cd.bookings
INNER JOIN cd.facilities ON bookings.facid = facilities.facid
WHERE bookings.starttime >= '2012-09-21'
AND bookings.starttime < ‘2012-09-22’
ORDER BY bookings.starttime;

#15 - good 
SELECT bookings.starttime, members.firstname, 
members.surname
FROM cd.bookings
JOIN cd.members ON bookings.memid = members.memid
WHERE members.firstname = 'David'
AND members.surname = 'Farrell';

