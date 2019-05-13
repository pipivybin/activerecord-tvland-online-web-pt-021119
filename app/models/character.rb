class Character < ActiveRecord::Base
  belongs_to :actor
  belongs_to :show

  def say_that_thing_you_say
    a = self.name
    b = self.catchphrase
    "#{a} always says: #{b}"
  end

  def build_show(hash = {})
    self.show = Show.new(hash)
  end

  def build_network(hash)
    self.network = Network.new(hash)
  end

end
