
puts "Masukan Angka"     

x = gets.chomp.to_i    #variable untuk memasukan angka yang akan diproses

if x < 0                #memulai kondisi
  puts "less than"
elsif x > 0
  puts "great than"
else
  puts "same #{x}"
end

#---------------------------------
puts "Sudah makan atau belum?jwb sudah atau belum...."

x = gets.chomp

if x == "sudah"
  puts "Silahkan istirahat!!!"
else
  puts "Silahkan makan dahulu!!!"
end

