Lyft LAB review 

Each class has only one line of the relationship
Ride is a join model
Ride is the only information that holds relationship of
- Passenger & Ride
- Driver & Ride
- Ex) Passenger will not hold any info about rides
In Belongs_to relationship
- A belongs to B
- A should hold the info

1.Passenger :name
2.Ride :passenger, :driver, :distance
3.Driver :name

When you initialize objects in console, it has to be in order
ex) initialize drivers and passengers first and initialize rides