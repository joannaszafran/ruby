class Wydarzenie < ActiveRecord::Base
  belongs_to :uzytkownik
  attr_accessible :nazwa, :opis, :uzytkownik

end
