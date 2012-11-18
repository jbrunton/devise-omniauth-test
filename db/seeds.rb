puts 'CREATING ROLES'

Role.create([
  { :name => 'admin' }, 
  { :name => 'user' }, 
  { :name => 'VIP' }
], :without_protection => true)

puts 'SETTING UP DEFAULT USER LOGIN'
user = User.create! :screen_name => 'John Brunton', :email => 'john_brunton@hotmail.co.uk', :password => 'password', :password_confirmation => 'password'
puts 'New user created: ' << user.screen_name
user2 = User.create! :screen_name => 'Second User', :email => 'user2@example.com', :password => 'please', :password_confirmation => 'please'
puts 'New user created: ' << user2.screen_name
user.add_role :admin
user2.add_role :VIP
