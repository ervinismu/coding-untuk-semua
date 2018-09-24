#+
data = [10, 20, 30, 40]
jumlah = 0
data.each do |elemen|
	puts elemen
	jumlah += elemen
end
puts "\nJumlah = #{jumlah}"

#-
arr = [5,4,3,2,1]
arr.each do |i|
	puts i
end

#/
data = [100, 90, 80, 70, 60]
bagi = data.map { |x| x/5}
puts bagi 


#%
data = 1..10
genap = data.select { |x| x % 2 == 0}
genap.each { |elemen| puts elemen}

#*
data = [6, 7, 8, 9, 10]
kali = data.map { |x| x*2}
puts kali 