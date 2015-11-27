class Docter < ActiveRecord::Base
  has_many :patients
  #belongs_to :patient
  has_many :appointments,through: :appointments

end
