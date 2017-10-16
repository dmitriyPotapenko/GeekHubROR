# 3

# create a class "User" with "name", "age" and "email" attributes
# create a methods to add, remove, update a user
# create a method to return all users and their info

## EXTRA TASK

# create a module "ExportCSV"
# create a method to create a csv file with users info.
# more info here: https://stackoverflow.com/a/19694973

# 4 this is a continuation of 3 task

# create a class "Post" with "title", "body", "owner_email" attributes
## user can create a post
# create a method to add, remove, update a post
# create a method to return all posts

## EXTRA TASK

# use module "ExportCSV"
# create a method to create a csv file with posts info.
# more info here: https://stackoverflow.com/a/19694973

require_relative 'export_csv'

class User
  include ExportCSV
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
    puts "        New user #{name} was succesfully added !"
  end

  def self.remove_user(name)
    @@users.map do |u|
      if name == u.name
        @@users.delete(u)
        puts "       User #{name} was succesfully removed !"
      end
    end
  end

  def self.update_user(name, new_age, new_email)
    @@users.map do |u|
      next unless u.name == name
      u.age = new_age
      u.email = new_email
      puts "        User #{u.name} was succesfully updated !"
    end
  end

  def self.return_users_and_info
    @@users.each { |u| puts "  Name: #{u.name} \n   Age: #{u.age} \n Email: #{u.email}" }
  end
end

class Post
  include ExportCSV
  @@posts = []

  def initialize(title, body, user)
    @title = title
    @body = body
    @user = user
    @owner_email = user
  end

  attr_accessor :title, :body, :owner_email, :user

  def self.add_post(title, body, owner_email)
    post = Post.new(title, body, owner_email)
    @@posts.push(post)
    puts "       New post \" #{title} \" was succesfully posted !"
  end

  def self.remove_post(title)
    @@posts.map do |p|
      if title == p.title
        @@posts.delete(p)
        puts "       Post \" #{title} \" was succesfully removed !"
      end
    end
    end

  def self.update_post(new_title, new_body, owner_email)
    @@posts.map do |p|
      next unless p.owner_email == owner_email
      p.title = new_title
      p.body = new_body
      puts "       Post \"  #{p.owner_email} \" was succesfully updated !"
    end
end

  def self.return_all_posts
    @@posts.each { |p| puts "Title: #{p.title} \n Body: #{p.body} \n User: #{p.user}" }
end
end

User.add_user('Dima', 25, 'potap1692@gmail.com')
User.add_user('Michail', 31, 'misha123890@mail.ru')
User.return_users_and_info
User.update_user('Dima', 33, 'dima@inbox.ru')
User.update_user('Michail', 17, 'succes@ukr.net')
User.return_users_and_info
Post.add_post('First post', 'This is my first post', 'potap1692@gmail.com')
Post.return_all_posts
Post.update_post('First post updated', 'First time updated first post', 'potap1692@gmail.com')
Post.add_post('First post from another user', 'I can put there any text ', 'succes@ukr.net')
Post.return_all_posts
User.remove_user('Dima')
Post.remove_post('First post updated')
Post.return_all_posts
User.return_users_and_info
User.users_info_csv
Post.posts_info_csv
