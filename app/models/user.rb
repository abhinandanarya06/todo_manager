class User < ActiveRecord::Base
  def formatted_string
    "#{id}. #{name} #{email}"
  end
end
