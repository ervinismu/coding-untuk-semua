name = "Bruce Wayne"
age = 44
score = 9.0

puts name
puts age
puts score

arr=[1,2,3,4,5]
i = 0
while i<arr.length
item = arr[i]
puts "Batman is #{name}"
i += 1
end

3.times do 
puts "the score is #{score}"
end

associate = [1,2,3]
associate.each do|i|
puts "In #{i} year he'll become 4#{i+4}"
end

puts "How many Robins are out there?"
Robin = gets.chomp.to_i
if Robin == 4
 puts "True"
else
 puts "False"
end

def multiply(number1, number2)
 number1 * number2
end

puts "100*50000: #{multiply(100, 50000)}"
