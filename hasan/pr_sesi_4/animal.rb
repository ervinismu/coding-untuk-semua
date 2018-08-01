class Animal
  #inisialisasi variabel
  def initialize(name, feet, organ)
    @name  = name
    @feet  = feet
    @organ = organ
  end

  # method nggo nge print sikile ono piro
  def count_legs()
    if @feet > 0
      puts "#{@name} memiliki #{@feet} kaki"
    else
      puts "#{@name} tidak memiliki kaki"
    end    
  end

  #method nggo nge print alat nafas e
  def organs_for_breathing()
    puts "#{@name} bernafas menggunakan #{@organ}"
  end
end