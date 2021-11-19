class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable

  enum user_type:{developer:0, qa:1, manager:2}

  has_many :bugs, dependent: :delete_all
  has_many :project, through: :bugs
end
