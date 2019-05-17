class Engineer < ApplicationRecord


  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
#:recoverable, :rememberable, :validatable
#devise :database_authenticatable, :registerable, 
:recoverable, :rememberable, :trackable, :validatable #, :omniauthable
  #devise :omniauthable


   has_many :rec_sessions #adds methods to my model
         #adds methods to my model
          has_many :artists, through: :rec_sessions
          has_many :studios, through: :rec_sessions
          #has_many :artists through :sessions
          #has_many :studios through :sessions

    #validates :name, presence => true
    #use_this=> validates :name, presence: true, length: { minimum: 2 }
    #use_this=>validates :name, uniqueness: true

end
