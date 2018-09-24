#load other class
require_relative 'cat'
require_relative 'chicken'
require_relative 'fish'

# membuat object dari clas kucing
cat = Cat.new('kucing', 4, 'paru-paru')
cat.count_legs
cat.organs_for_breathing

# membuat object dari clas pitik
chicken = Chicken.new('ayam', 2, 'paru-paru')
chicken.count_legs
chicken.organs_for_breathing

# membuat object dari clas iwak
fish = Fish.new('iwak', 4, 'insang')
fish.count_legs
fish.organs_for_breathing
fish.habitat('banyu laut')