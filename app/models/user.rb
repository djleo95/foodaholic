class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  mount_uploader :avatar, PhotoUploader
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :trackable, :validatable
  # attr_accessible :email, :password, :remember_me, :avatar, :avatar_cache, :remove_avatar
  has_many :friends
  has_many :albums
  has_many :shares
end
