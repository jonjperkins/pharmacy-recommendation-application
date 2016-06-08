class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable
         
  validates :email, format: { with: /\b[A-Z0-9._%a-z\-]+@campbell\.edu\z/,
            message: "This is not a valid email address. Please check the information
                      you entered and try again." }
  has_many :surveys, dependent: :destroy       
end
