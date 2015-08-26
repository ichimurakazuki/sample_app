class User < ActiveRecord::Base
   has_many :microposts, dependent: :destroy
   devise :database_authenticatable,:registerable,
          :recoverable, :rememberable, :trackable, :validatable
          
   validates :name,  presence: true, length: { maximum: 50 }
end

