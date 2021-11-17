3.times do |dev|
	User.create!(
name: "dev #{dev}",
email:"#{dev}dev@gmail.com",
password: "123asd",
password_confirmation: "123asd",
user_type: 0
		)
end
puts "3 developer created"

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


4.times do |proj|
	Project.create!(
name: "proj#{proj}"
		)
end
puts "4 Project created"


# 2.times do |bug|

# 	Bug.create!(
# 		title: "bug #{bug}",
# 		description:"description #{bug}",
# 		screenshot: "ss #{bug}",
# 		bugtype: false,
# 		status: "new",
# 		user_id:@User,
# 		project_id: 0
# 		)
# end

# 2.times do |bug|

# 	Bug.create!(
# 		title: "bug #{bug}",
# 		description:"description #{bug}",
# 		screenshot: "ss #{bug}",
# 		bugtype: false,
# 		status: "new",
# 		user_id:1,
# 		project_id: 1
# 		)
# end

# 1.times do |bug|

# 	Bug.create!(
# 		title: "bug #{bug}",
# 		description:"description #{bug}",
# 		screenshot: "ss #{bug}",
# 		bugtype: false,
# 		status: "new",
# 		user_id:2,
# 		project_id: 0
# 		)
# end

# puts "5 Bugs created"

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