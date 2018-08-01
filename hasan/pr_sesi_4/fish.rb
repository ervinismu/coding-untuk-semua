#load parent class
require_relative 'animal'

class Fish < Animal
  # mendefiniskan method iwak kui uripe nengdi
  def habitat(where)
    puts "#{@name} urip neng #{where}"
  end
end