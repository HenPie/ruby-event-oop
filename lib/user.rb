require "pry"

class User
  attr_accessor :email, :age
  @@user_all = []

  def initialize(email_to_save, age_to_save)
      @email = email_to_save
      @age = age_to_save
      @@user_all << self
  end

  def self.all
      return @@user_all
  end

  def self.find_by_email(mail)
    self.all.each do |user|
      return user.age if user.email == mail
    end 
  end
end

