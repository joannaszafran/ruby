class Wpi < ActiveRecord::Base
  belongs_to :uzytkownik
  attr_accessible :nazwa, :uzytkownik

end
