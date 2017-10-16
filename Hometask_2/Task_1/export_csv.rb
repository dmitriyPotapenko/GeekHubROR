require 'csv'

module ExportCSV
  def user_csv
    CSV.open("#{@name}.csv", 'a+') do |csv|
      csv << %w[Name Age Email]
      csv << [@name, @age, @email]
    end
  end

  def self.included(some_method)
    some_method.extend MethodsCSV
  end

  module MethodsCSV
    def users_info_csv
      users = class_variable_get(:@@users)

      CSV.open('users_info.csv', 'a+') do |csv|
        csv << %w[Name Age Email]
        users.each do |user|
          csv << [user.name, user.age, user.email]
        end
      end
    end

    def posts_info_csv
      posts = class_variable_get(:@@posts)

      CSV.open('posts_info.csv', 'a+') do |csv|
        csv << %w[Title Body Owner_email]
        posts.each do |post|
          csv << [post.title, post.body, post.owner_email]
        end
      end
    end
  end
end
