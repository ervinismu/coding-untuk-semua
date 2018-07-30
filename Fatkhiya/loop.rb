#Times
5.times do
puts "haloo semuanya"
end

#While loop
a = 1
while a < 6
	puts "#{a}"
	a += 1
end

#Controling loop
a = 5
until a <= 0
	puts "nilai a: #{a}"
	a -= 1
end

#Controling loop
iterations = 1
loop do
	puts "Number of iterations=#{iterations}"
	iterations += 1
	break if iterations > 5
end