class Post < ActiveRecord::Base
  belongs_to :admin_user
  before_save :save_current_user
  has_many :comentarios
  
  def save_current_user
    self.admin_user_id = current_admin_user.id
  end
end
