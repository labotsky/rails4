User.create!(name:  "Example User",
			 username:  "example",
             email: "sergey1993.08@mail.ru",
             password:              "zxccxz123",
             password_confirmation: "zxccxz123")

99.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password123"
  User.create!(name:  name,
  	 		   username:  name+"Test",
               email: email,
               password:              password,
               password_confirmation: password)
end