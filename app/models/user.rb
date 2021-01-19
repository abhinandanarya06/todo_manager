class User < ActiveRecord::Base
  def self.login(email, password)
    where("email = ? and password = ?", email, password)
  end

  def formatted_string
    "#{id}. #{name} #{email}"
  end
end
