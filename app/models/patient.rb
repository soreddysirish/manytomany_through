class Patient < ActiveRecord::Base
  has_many :docters
  has_many :appointments,through: :appointments
   #has_and_belongs_to_many :docters
end
