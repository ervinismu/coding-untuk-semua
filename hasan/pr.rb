# mendefinisikan 3 jenis variabel
num = 8
str = "String"
arr = [1, 2, 3, 4, 5]

#contoh looping 1
# menampilkan string str sebanyak 2 kali
2.times do 
   puts str
end

#method 1, single line method
def multiply (a, b)
    puts a * b
end

#method 2, multiline method, dicampur conditional statement no 1
#menampilkan penjumlahan dari 2 variabel, jika kurang dari 10 dan lebih akan beda outputnya
def add (a, b)
    c =  a + b

    if c <= 10
        puts "Hasil tambah #{a} dan #{b} kurang dari 10"
    else
        puts "Hasil tambah #{a} dan #{b} adalah #{c}"
    end
end

#contoh looping 2
#menampilkan value dari array berdasarkan indeksnya, sisan pakai method yang didefinisikan sebelumnya
i = 0
while i < arr.length
    add(arr[i], num)
    i += 1
end

#iterasi no 1, menampilkan hasil perkalian
arr.each { |val| multiply(val, num) }


#iterasi no 2, conditional no 2
arr.each do |val|
    result =  num % val
    if result < 3
        puts "Sisa hasil bagi #{num} dan #{val} kurang dari 5"
    else
        puts "Sisa hasil bagi #{num} dan #{val} adalah #{result}"
    end
end
