class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

def full_name
  self.first_name + " " + self.last_name
end

def list_roles
  d = []
  self.characters.collect do |x|
    a = x.name
    b = x.show.name
    c = []
    c << a
    c << b
    d << c.join(" - ")
  end
  d
end

end
