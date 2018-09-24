
#For Loop

x = [1, 2, 3, 4, 5] # <- variable yang berisikan array untuk dilooping

for i in x do     # <- memulai looping
  puts i
end

puts "Done!"

#---------------------------------------
#While Loop

puts "Masukan Angka untuk looping"
x = gets.chomp.to_i

while x >= 0
  puts x
  x -= 1 # <- refactored this line
end

puts "Done!"