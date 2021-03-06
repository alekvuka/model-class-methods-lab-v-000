class Classification < ActiveRecord::Base
  has_many :boat_classifications
  has_many :boats, through: :boat_classifications

  def self.my_all
    self.all
  end

  def self.longest

    max_lenght = Boat.maximum('length')
    Boat.find_by(length: max_lenght).classifications

  end

end
