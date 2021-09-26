# RailwayDatabase
Backend services of a railway database

INTRODUCTION :The Railway Database management allows the passenger to check for a train from a source to a destination. Features like booking, cancellation, checking for the availability of tickets and also enquiring about the booking status are seen in this database. The aim of this project is to facilitate easy access to the train information along with their booking status and seat availability by the customer. If these records are written manually then it is prone to errors and maintenance and updation of these records become tiresome.

The entities present in this database are:-

1.Users​:-keepstrackofalltheuserswhologgedintotherailway database along with their details like name, age, gender, mobile, state, city and pin.

2.Passengers​:-keepstrackofallthepassengerswhohavebookeda ticket. Data like age, gender, seat_no, ticket_no and reservation status, booking_date are also stored along with it

3.Station​:-Thedetailsaboutthenameofthestation,arrivaland halting period for a particular train is stored in this table.

4.Ticket​ :- contains the details about booking status of that ticket.

5.Train​:-Thistablestoresthetraindetailsliketrain_no,trainname, arrival & departure time, availability and date of running .

6.Train_Status​ :- tells us about the fare based on the options of an ac/non-ac seat.
