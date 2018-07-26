# Soal 1
# Variabel bertipe array bernama attack
attack 	= ['Alexis', 'Lukaku', 'Lingard']
shirt_number = [7,9,14]
# Variabel bertipe string bernama manutd
manutd  = "Manchester is Red"
# Variabel bertipe integer bernama born dan i
born 	= 1878
i 		= 0
j 		= 0

#Soal 2 : perulangan
#Perulangan Pertama
#Menampilkan semua value variabel attack dengan while
while i < attack.length  do
  puts "#{attack[i]} is Red!"
  i +=1
end
#Perulangan Kedua
#Menampilkan value variabel manutd dengan loopp sebanyak 3 kali
loop do
  puts manutd
  j += 1
  if j == 3
    break       # this will cause execution to exit the loop
  end       # this will cause execution to exit the loop
end

#Soal 3 : conditional
#Conditional 1
puts "What's ur name"
n  = gets.chomp
if attack.include?n
  puts "#{n}, U're Manchunian"
else
  puts "#{n}, U're not Manchunian"
end

#Conditional 2
puts "How old are you"
a  = gets.chomp.to_i
if a <= 18
  puts "You're too young"
else
  puts "Never gets old"
end

#Soal 4 : Block
#Multi line block
def multi(arr)
  arr.each do |x|
    puts "He is #{x}"
  end
end
multi(attack)


#Single line block
def single(arr, arr2)
  arr.each_with_index{|y, z| puts "#{y} number is #{arr2[z]}"}
end
single(attack, shirt_number)


#Soal 5 :iteration
shirt_number.each do |i|
  j = i % 3
  puts "His number mod by 3 = #{j}"
end