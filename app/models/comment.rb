class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post

  def user_attributes=(ua)
    self.user = User.find_or_create_by(ua) unless ua[:username].empty?
  end
end
