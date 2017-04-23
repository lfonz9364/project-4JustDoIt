# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Passenger.destroy_all
Car.destroy_all
User.destroy_all
Comment.destroy_all

user1 = User.create(first_name: 'Barry', last_name: 'Tabios', email: 'barry.tabios@gmail.com', phone: '0407697747', company: 'General Assembly', password: 'password');
user2 = User.create(first_name: 'Marta', last_name: 'Scaramella', email: 'marta.scaramella@gmail.com', phone: '0422094711', company: 'General Assembly', password: 'password');
user3 = User.create(first_name: 'Gat', last_name: 'Tholbok', email: 'gat.tholbok@gmail.com', phone: '0411351278', company: 'General Assembly', password: 'password');
user4 = User.create(first_name: 'Alfons', last_name: 'Caroles', email: 'alfons.caroles@gmail.com', phone: '0411264349', company: 'General Assembly', password: 'password');
user5 = User.create(first_name: 'Daniel', last_name: 'Tsui', email: 'dt@ga.com', phone: '0411123223', company: 'General Assembly', password: 'password');
user6 = User.create(first_name: 'Kasun', last_name: 'Maldeni', email: 'kasun.maldeni@gmail.com', phone: '012345667', company: 'General Assembly', password: 'password');

user7 = User.create(first_name: 'a', last_name: 'd', email: 'a@gmail.com', phone: '012345667', company: 'General Assembly', password: 'password');
user8 = User.create(first_name: 'b', last_name: 'e', email: 'b@gmail.com', phone: '012345667', company: 'General Assembly', password: 'password');
user9 = User.create(first_name: 'c', last_name: 'f', email: 'c@gmail.com', phone: '012345667', company: 'General Assembly', password: 'password');
user10 = User.create(first_name: 'd', last_name: 'k', email: 'd@gmail.com', phone: '012345667', company: 'General Assembly', password: 'password');
user11 = User.create(first_name: 'e', last_name: 'l', email: 'e@gmail.com', phone: '012345667', company: 'General Assembly', password: 'password');
user12 = User.create(first_name: 'f', last_name: 'm', email: 'f@gmail.com', phone: '012345667', company: 'General Assembly', password: 'password');
user13 = User.create(first_name: 'g', last_name: 'n', email: 'g@gmail.com', phone: '012345667', company: 'General Assembly', password: 'password');
user14 = User.create(first_name: 'h', last_name: 'o', email: 'h@gmail.com', phone: '012345667', company: 'General Assembly', password: 'password');
user15 = User.create(first_name: 'i', last_name: 'p', email: 'igmail.com', phone: '012345667', company: 'General Assembly', password: 'password');
user16 = User.create(first_name: 'j', last_name: 'q', email: 'j@gmail.com', phone: '012345667', company: 'General Assembly', password: 'password');

user17 = User.create(first_name: 'k', last_name: 'q', email: 'aa@gmail.com', phone: '012345667', company: 'General Assembly', password: 'password');
user18 = User.create(first_name: 'l', last_name: 'q', email: 'bb@gmail.com', phone: '012345667', company: 'General Assembly', password: 'password');
user19 = User.create(first_name: 'm', last_name: 'q', email: 'cc@gmail.com', phone: '012345667', company: 'General Assembly', password: 'password');
user20 = User.create(first_name: 'n', last_name: 'q', email: 'dd@gmail.com', phone: '012345667', company: 'General Assembly', password: 'password');
user21 = User.create(first_name: 'o', last_name: 'q', email: 'ee@gmail.com', phone: '012345667', company: 'General Assembly', password: 'password');
user22 = User.create(first_name: 'p', last_name: 'q', email: 'ff@gmail.com', phone: '012345667', company: 'General Assembly', password: 'password');


#drivers
car1 = Car.create(user_id: 1, seat_number: 3, meeting_point: '6 Roger Court', suburb: 'Rowville', smoker_friendly: false, date_time: 'Mon, 09 Oct 2017 16:30:00 UTC +00:00', description: 'I have seats avaialable', latitude:-37.927482, longitude:145.239343);
car2 = Car.create(user_id: 2, seat_number: 2, meeting_point: '45 William Street', suburb: 'Melbourne', smoker_friendly: true, date_time:'Tue, 11 Oct 2017 19:30:00 UTC +00:00', description: 'I have seats avaialable', latitude:-37.8185774, longitude:144.9590953);
car3 = Car.create(user_id: 7, seat_number: 1, meeting_point: '10 Wackett Street', suburb: 'Laverton', smoker_friendly: true, date_time:'Tue, 10 Oct 2017 20:30:00 UTC +00:00', description: 'Join Me!!!', latitude:-37.852244, longitude:144.769697);
car4 = Car.create(user_id: 8, seat_number: 2, meeting_point: '10 Seperation Street', suburb: 'Northcote', smoker_friendly: true, date_time:'Tue, 12 Oct 2017 10:30:00 UTC +00:00', description: 'Fun Ride waiting for you', latitude:-37.769598, longitude:145.000034);
car5 = Car.create(user_id: 9, seat_number: 3, meeting_point: '10 Swanston Street', suburb: 'Carlton', smoker_friendly: true, date_time:'Tue, 14 Oct 2017 08:30:00 UTC +00:00', description: 'Carlton area ', latitude:-37.817127, longitude:144.967295);
car6 = Car.create(user_id: 10, seat_number: 2, meeting_point: '1 Bardia Street', suburb: 'Ringwood', smoker_friendly: true, date_time:'Tue, 10 Oct 2017 08:30:00 UTC +00:00', description: 'I have seats avaialable ', latitude:-37.812627, longitude:145.233521);
car7 = Car.create(user_id: 11, seat_number: 10, meeting_point: '2 Shasta Avenue', suburb: 'Ringwood East', smoker_friendly: true, date_time:'Wed, 12 Oct 2017 09:30:00 UTC +00:00', description: 'I have seats avaialable ', latitude:-37.816634, longitude:145.247785);
car8 = Car.create(user_id: 12, seat_number: 4, meeting_point: '3 Kingsley Crescent', suburb: 'Mont Albert', smoker_friendly: true, date_time:'Thu, 13 Oct 2017 10:30:00 UTC +00:00', description: 'I have seats avaialable', latitude:-37.816193, longitude:145.111939);
car9 = Car.create(user_id: 13, seat_number: 2, meeting_point: '4 Paton Street', suburb: 'Montmorency', smoker_friendly: true, date_time:'Fri, 14 Oct 2017 11:30:00 UTC +00:00', description: 'I have seats avaialable', latitude:-37.719715, longitude:145.122255);
car10 = Car.create(user_id: 14, seat_number: 1, meeting_point: '5 Brown Street', suburb: 'Heidelberg', smoker_friendly: true, date_time:'Sat, 15 Oct 2017 12:30:00 UTC +00:00', description: 'I have seats avaialable', latitude:-37.983563, longitude:145.220593);
car11 = Car.create(user_id: 15, seat_number: 3, meeting_point: '6 King Street', suburb: 'Dandenong', smoker_friendly: true, date_time:'Sun, 16 Oct 2017 13:30:00 UTC +00:00', description: 'I have seats avaialable', latitude:-37.817127, longitude:144.967295);
car12 = Car.create(user_id: 16, seat_number: 3, meeting_point: '7 Virginia Street', suburb: 'Springvale', smoker_friendly: true, date_time:'Mon, 17 Oct 2017 14:30:00 UTC +00:00', description: 'I have seats avaialable', latitude:-37.947585, longitude:145.156692);

car13 = Car.create(user_id: 17, seat_number: 3, meeting_point: '10 Bladin Street', suburb: 'Laverton', smoker_friendly: true, date_time:'Mon, 17 Oct 2017 14:30:00 UTC +00:00', description: 'I have seats avaialable', latitude:-37.849379, longitude:144.774148);
car14 = Car.create(user_id: 18, seat_number: 3, meeting_point: '10 Abbotsford Street', suburb: 'North Melbourne', smoker_friendly: true, date_time:'Mon, 17 Oct 2017 14:30:00 UTC +00:00', description: 'I have seats avaialable', latitude:-37.807945, longitude:144.943506);
car15 = Car.create(user_id: 19, seat_number: 3, meeting_point: '10 Fitzroy Street', suburb: 'Footscray', smoker_friendly: true, date_time:'Mon, 17 Oct 2017 14:30:00 UTC +00:00', description: 'I have seats avaialable', latitude:-37.798141, longitude:144.895098);
car16 = Car.create(user_id: 20, seat_number: 3, meeting_point: '10 Nicholson Street', suburb: 'Carlton', smoker_friendly: true, date_time:'Mon, 17 Oct 2017 14:30:00 UTC +00:00', description: 'I have seats avaialable', latitude:-37.809478, longitude:144.996294);
car17 = Car.create(user_id: 21, seat_number: 3, meeting_point: '222 Turner Street', suburb: 'Port Melbourne', smoker_friendly: true, date_time:'Mon, 17 Oct 2017 14:30:00 UTC +00:00', description: 'I have seats avaialable', latitude:-37.823877, longitude:144.934624);
car18 = Car.create(user_id: 22, seat_number: 3, meeting_point: '10 New Street', suburb: 'Brighton', smoker_friendly: true, date_time:'Mon, 17 Oct 2017 14:30:00 UTC +00:00', description: 'I have seats avaialable', latitude:-37.907776, longitude:144.992516);

passenger1 = Passenger.create(user_id: 3, car_id:1);
passenger2 = Passenger.create(user_id: 4, car_id:1);
passenger3 = Passenger.create(user_id: 5, car_id:2);
passenger4 = Passenger.create(user_id: 6, car_id:2);

comment1 = Comment.create(body: 'lovely person', car_id: 1, user_id: 1);
comment2 = Comment.create(body: 'pleasant ride', car_id: 1, user_id: 2);
comment3 = Comment.create(body: 'definitely will ride with this person again ', car_id: 2, user_id: 3);
comment4 = Comment.create(body: 'clean car', car_id: 2, user_id: 4);
