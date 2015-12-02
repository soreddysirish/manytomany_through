class Docter < ActiveRecord::Base
  has_many :patients
  #belongs_to :patient
  has_many :appointments,through: :appointments
  validates :name, presence:true
  # scope 'appoinments',->{joins(:appoinments).where(:id => id) }

def self.test
  Docter.update_all(:name => "sirish")
end
end
