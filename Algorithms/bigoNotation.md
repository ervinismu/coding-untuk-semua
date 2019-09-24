# Big O Notation

`Big O Notation` adalah bahasa yang digunakkan untuk berbicara tentang berapa lama suatu algoritma berjalan.  
Dengan `Big O Notation` kita bisa menyatakan runtime dalam hal seberapa cepat itu tumbuh telatif terhadap input,  
karena input bisa tumbuh menjadi besar atau kecil dengan tidak pasti.

Penjabaran:
1. Seberapa cepat runtime tumbuh
  Itu tergantung pada kecepatan prosessor. Jadi alih-alih berbicara tentang runtime secara langsung,  
  kami menggunakkan Big O Notation untuk berbicara tentang seberapa cepat runtime tumbuh.
2. Relatif terhadap input
  Karena kita mengukur seberapa cepat runtime kita tumbuh, kita perlu mengekspresikan kecepatan kita  
  dalam hal sesuatu yang lain. Dengan Big O Notation , digunakkan ukuran input yang disebut `n`,  
  jadi kita dapat mengatakan hal-hal seperti runtime tumbuh pada urutan ukuran input `(O(n))` atau pada urutan kuadrat dari ukuran input `(O(n2))`.
3. Input menjadi besar
  Algoritma mungkin memiliki langkah-langkah yang tampak mahal ketika `n` kecil, tetapi akhirnya  
  dikalahkan oleh langkah-langkah lain seperti `n` menjadi besar. Untuk analisis Big O sangat  
  peduli tentang hal-hal yang tumbuh paling cepat saat input tumbuh, karena segala sesuatu yang lain dengan cepat dikalahkan sebagai `n` menjadi sangat besar.

## Contoh:

#### O(1)
```ruby
  def print_first_name(names)
    p names[0]
  end

```
Metode ini berjalan di `O(1)` waktu (atau `"waktu konstan"`) relatif terhadap inputnya.  
Array input dapat berupa 1 item atau 100 item, tetapi metode ini masih hanya membutuhkan satu langkah.

#### O(n)
```ruby
  def print_all_names(names)
    names.each do |name|
      puts name
    end
  end
```
Metode ini berjalan di `O(n)` waktu (atau `"waktu linear"`), dimana n adalah jumlah `name` dalam array.  
Jika array memiliki 10 name, kita harus mencetak 10 kali.  
Jika memiliki 100 `name`, kita harus mencetak 100 kali.

#### O(n2) atau n kuadrat
```ruby
  def print_all_possible_ordered_pairs(items)
    items.each do |first_item|
      items.each do |second_item|
        puts first_item, second_item
      end
    end
  end
```
Di sini bersarang dua loop. Jika array kami memiliki `n` item, loop luar kita berjalan `n` kali dan  
loop batin kita berjalan `n` kali untuk setiap iterasi dari loop luar, memberi kami `n2(kuadrat)` total cetakan.  
Jadi metode ini berjalan di `O(n2)` waktu (atau `"waktu kuadratik"`).  
Jika array memiliki 10 item, kita harus mencetak 100 kali.  
Jika array memiliki 1.000 item, kita harus mencetak 1.000.000 kali.

## N dapat berupa input aktual atau ukuran input
```ruby
  def say_hello_in_times(n)
    n.times { p 'Hello' }
  end

  def print_all_items(items)
    items.each do |item|
      p item
    end
  end
```
Kedua metode ini memiliki `O(n)` runtime, meskipun yang satu mengambil integer sebagai inputnya dan yang lain mengambil array.  
Terkadang `n` adalah angka aktual yang merupakkan input untuk metode, dan lain kali `n` adalah jumlah item dalam array input.

# Referensi
* [bigonotationcheatsheet](https://www.bigocheatsheet.com/)
