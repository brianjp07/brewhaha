class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Enum for the user role
  enum role: { consumer: 1, producer: 2 }

  # Check phone number
  validates :phone, format: {
    with: /\A\d{3}-\d{3}-\d{4}\z/,
    message: "Enter your phone number in the following format: ###-###-####"
  }

end
