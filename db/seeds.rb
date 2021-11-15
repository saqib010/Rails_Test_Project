

User.create!(
name: "dev1",
email:"1dev@gmail.com",
password: "123asd",
password_confirmation: "123asd",
user_type: 0
		)

puts "1 developer created"

User.create!(
name: "qa1",
email:"1qa@gmail.com",
password: "123asd",
password_confirmation: "123asd",
user_type: 1
		)

puts "1 QA created"

User.create!(
name: "man1",
email:"1man@gmail.com",
password: "123asd",
password_confirmation: "123asd",
user_type: 2
		)

puts "1 Manager created"


Project.create!(
name: "proj1"
		)

puts "1 Project created"

=begin
3.times do |dev|
	User.create!(
name: "dev #{dev}",
email:"#{dev}dev@gmail.com",
password: "123asd",
password_confirmation: "123asd",
user_type: 0
		)
end

rescue StandardError => e
	
end
2.times do |qa|
	User.create!(
name: "qa #{qa}",
email:"#{qa}qa@gmail.com",
password: "123asd",
password_confirmation: "123asd",
user_type: 1
		)
end

puts "2 QA created"

1.times do |manager|
	User.create!(
name: "manager #{manager}",
email:"#{manager}man@gmail.com",
password: "123asd",
password_confirmation: "123asd",
user_type: 2
		)
end

puts "1 Manager created"
=end