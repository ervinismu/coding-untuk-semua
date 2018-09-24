#If, elsif, else
puts "Masukkan angka"
a = gets.chomp.to_i
if a < 5
	puts "Angka anda kurang dari 5"
elsif a > 5
	puts "Angka anda lebih dari 5"
else 
	puts "Angka anda adalah 5"
end 

#If, else
kamus = {
	"one"=>"satu",
	"two"=>"dua",
	"three"=>"tiga",
	"four"=>"empat",
	"five"=>"lima"
}
print "Masukkan angka satu sampai lima dalam bahasa Inggris: "
angka = gets.strip.downcase
arti = kamus[angka]
if arti == nil then
	puts "Angka yang anda cari tidak ditemukan."
else
	puts "#{angka} = #{arti}"
end

