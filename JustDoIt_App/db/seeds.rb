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

car1 = Car.create(user_id: 1, seat_number: 3, meeting_point: '6 Roger Court', suburb: 'Rowville', smoker_friendly: false, date:'10-Oct-2017', time: '22:00', description: 'I have seats avaialable');
car2 = Car.create(user_id: 2, seat_number: 2, meeting_point: '45 William Street', suburb: 'Melbourne', smoker_friendly: true, date:'10-Oct-2017', time: '08:00', description: 'I have seats avaialable');

passenger1 = Passenger.create(user_id: 3, car_id:1);
passenger2 = Passenger.create(user_id: 4, car_id:1);
passenger3 = Passenger.create(user_id: 5, car_id:2);
passenger4 = Passenger.create(user_id: 6, car_id:2);

comment1 = Comment.create(body: 'lovely person', car_id: 1, user_id: 1);
comment2 = Comment.create(body: 'pleasant ride', car_id: 1, user_id: 2);
comment3 = Comment.create(body: 'definitely will ride with this person again ', car_id: 2, user_id: 3);
comment4 = Comment.create(body: 'clean car', car_id: 2, user_id: 4);
