FactoryGirl.define do
  factory :user do
  	username 'username'
  	name 'name'	
    email 'test@example.com'
    password 'foobar123'
    password_confirmation 'foobar123'
  end
end