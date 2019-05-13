class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

def full_name
  a = self.first_name
  b = self.last_name
  c = []
  c << a
  c << b
  c.join (" ")
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
