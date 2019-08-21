class User < ActiveRecord::Base
  extend Devise::Models
  #enum role: [:user, :finance, :admin]
  enum role: { user: 1, finance: 2, admin: 3 }

  after_initialize :set_default_role, :if => :new_record?

  def set_default_role
    self.role ||= :user
  end

  # Include default devise modules. Others available are:WWWW
  # :confirmable, :lockable, :timeoutable and :omniauthable :trackable,
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  include DeviseTokenAuth::Concerns::User


end
