class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

	# has_attached_file :avatar, styles: { meelo: "300x300>", lilguy: "75x75>" }, default_url: "missing_thumb.jpg"
 #  	validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

  has_many :posts
end
