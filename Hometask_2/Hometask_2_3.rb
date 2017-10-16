# 3

# create a class "User" with "name", "age" and "email" attributes
# create a methods to add, remove, update a user
# create a method to return all users and their info

class User

	@@users = []

	attr_accessor :name, :age, :email

  def initialize(name, age, email)
    @name = name
    @age = age
    @email = email
  end

	def self.add_user(name, age, email)
		user = User.new(name, age, email)
		@@users.push(user)
		puts "New user #{name} succesfully added !"
	end

	def self.remove_user(name)
       @@users.map do |u|
       	if name = u.name
       		@@users.delete(u)
       		puts "User #{name} succesfully removed !"
       	end
       end
	end

  def self.update_user(name, new_age, new_email)
    @@users.map do |u|
      if u.name == name
        u.age = new_age
        u.email = new_email

      puts "User #{u.name} was succesfully updated !"

       end
    end
  end

def self.return_users_and_info
    @@users.each { |u| puts "  Name: #{u.name} \n   Age: #{u.age} \n Email: #{u.email}" }
  end

end

User.add_user('Dima',25,'potap1692@gmail.com')
User.add_user('Michail',31,'misha123890@mail.ru')
User.return_users_and_info
User.update_user('Dima',33,'dima@inbox.ru')
User.update_user('Michail',17,'succes@ukr.net')
User.return_users_and_info
User.remove_user('Dima')
User.return_users_and_info