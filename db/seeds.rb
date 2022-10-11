# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


user1 = User.create(username: "Antony", password_digest: "password")
user2 = User.create(username: "Cristiano", password_digest: "password")
user3 = User.create(username: "Marcus", password_digest: "password")
user4 = User.create(username: "Carlos", password_digest: "password")
user5 = User.create(username: "Bruno", password_digest: "password")
user6 = User.create(username: "Cristian", password_digest: "password")
user7 = User.create(username: "Jadon", password_digest: "password")
user8 = User.create(username: "Mason", password_digest: "password")
user9 = User.create(username: "Lisandro", password_digest: "password")
user10 = User.create(username: "Tyrell", password_digest: "password")


user1.runs.create(date: '04/02/2022', distance: 4.97, total_time: '0:58:05', calories: 601, elevation: 195, average_heartrate: 167, average_pace: '00:11:40', fastest_split: '00:10:18')
user2.runs.create(date: '05/02/2022', distance: 2.59, total_time: '0:30:00', calories: 300, elevation: 100, average_heartrate: 150, average_pace: '00:11:40', fastest_split: '00:10:18')
user3.runs.create(date: '06/02/2022', distance: 3.97, total_time: '0:45:00', calories: 400, elevation: 150, average_heartrate: 160, average_pace: '00:11:40', fastest_split: '00:10:18')
user4.runs.create(date: '07/02/2022', distance: 4.97, total_time: '0:58:05', calories: 601, elevation: 195, average_heartrate: 167, average_pace: '00:11:40', fastest_split: '00:10:18')
user5.runs.create(date: '08/02/2022', distance: 2.59, total_time: '0:30:00', calories: 300, elevation: 100, average_heartrate: 150, average_pace: '00:11:40', fastest_split: '00:10:18')
user6.runs.create(date: '09/02/2022', distance: 3.97, total_time: '0:45:00', calories: 400, elevation: 150, average_heartrate: 160, average_pace: '00:11:40', fastest_split: '00:10:18')
user7.runs.create(date: '10/02/2022', distance: 4.97, total_time: '0:58:05', calories: 601, elevation: 195, average_heartrate: 167, average_pace: '00:11:40', fastest_split: '00:10:18')
user8.runs.create(date: '11/02/2022', distance: 2.59, total_time: '0:30:00', calories: 300, elevation: 100, average_heartrate: 150, average_pace: '00:11:40', fastest_split: '00:10:18')
user9.runs.create(date: '12/02/2022', distance: 3.97, total_time: '0:45:00', calories: 400, elevation: 150, average_heartrate: 160, average_pace: '00:11:40', fastest_split: '00:10:18')
user10.runs.create(date: '13/02/2022', distance: 4.97, total_time: '0:58:05', calories: 601, elevation: 195, average_heartrate: 167, average_pace: '00:11:40', fastest_split: '00:10:18')
