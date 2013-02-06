class Komentarz < ActiveRecord::Base
  belongs_to :uzytkownik
  attr_accessible :tresc, :uzytkownik
end
