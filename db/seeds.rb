puts 'CREATING ROLES'
Role.create([
  { :name => 'admin' }, 
  { :name => 'user' },
  { :name => 'VIP' }
])
puts 'SETTING UP DEFAULT USER LOGIN'
user = User.create! :name => 'Gillian', :email => 'gillian.leahy@uts.edu.au', :password => 'pleaseme', :password_confirmation => 'pleaseme'
puts 'New user created: ' << user.name
user.add_role :admin