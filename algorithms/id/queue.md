# Queue(Antrian)

## Apa itu Queue ?
Queue adalah structure data abstrak, agak mirip dengan Stacks. Tidak seperti Stacks, 
queue terbuka di kedua ujungnya. Satu ujung digunakkan untuk **memasukkan data(enqueue)**
 dan ujung yang lainnya digunakkan untuk **menghapus data(dequeue)**. Queue mengikuti 
 metode First-In-First-Out, yaitu item data yang disimpan terlebih dahulu akan diakses 
 terlebih dahulu.
 
 Seperti Stacks, queue dapat di implementasikan menggunakkan array, pointers dan 
 structure
 
 ## Operasi Dasar
 Operasi queue melibatkan menginisialisasi atau mendefinisikan antrian, menggunakkan 
 dan kemudian menghapusnya dari memori. 
 Berikut beberapa contoh operasi dasar queue :
   * **enqueue()** - menambahkan(menyimpan) item ke antrian.
   * **dequeue()** - menghapus(mengakses) item dari antrian.
   * **peek()** - mendapatkn elemen di depan antrian tanpa menghapusnya.
   * **isfull()** - memeriksa apakah antrian penuh
   * **isempty()** - memeriksa apakah antrian penuh

## Queue sebagai Abstrack Data Type (ADT)

> Penjelasan tentang ADT ada di [sini](https://www.geeksforgeeks.org/abstract-data-types/)  

Arti dari tipe data abstrak dengan jelas mengatakan bahwa untuk struktur data menjadi abstrak, itu harus memiliki karakteristik yang disebutkan di bawah ini:

1. Pertama, harus ada cara tertentu di mana komponen terkait satu sama lain
2. Kedua, pernyataan untuk operasi yang dapat dilakukan pada elemen tipe data abstrak harus ditentukan

Jadi untuk mendefinisikan Queue sebagai tipe data abstrak, ini adalah kriteria berikut:
 * Inisialisasi antrian agar kosong
 * Periksa apakah antrian kosong atau tidak
 * Periksa apakah antrian penuh atau tidak
 * Masukkan elemen baru setelah elemen terakhir dalam antrian, jika antrian tidak penuh
 * Ambil elemen antrian pertama, jika tidak kosong
 * Hapus elemen pertama dalam antrian, jika tidak kosong

## Contoh Kode Ruby
Contoh implementasi kode Ruby untuk queue
```ruby
  class MyQueue
    # untuk melakukkan error handling
    QueueFull  = Class.new(StandardError)
    QueueEmpty = Class.new(StandardError)

    attr_reader :queue

    def initialize(size)
      @size = size
      @queue = []
    end

    # memasukkan data ke antrian
    def enqueue(data)
      raise QueueFull if full?

      @queue << data
    end

    # mengeluarkan data pertama dari antrian
    def dequeue
      raise QueueEmpty if empty?

      @queue.shift
    end

    # melihat jumlah antrian
    def size
      @queue.length
    end

    # cek antrian paling depan
    def peek
      @queue[0]
    end

    # untuk menghapus semua data antrian
    def clear
      @queue.clear
    end

    # check antrian full atau tidak
    def full?
      size == @size
    end

    # check antrian kosong atau tidak
    def empty?
      size.zero?
    end
  end
```

## Referensi
* [tutorialspoint](https://www.tutorialspoint.com/data_structures_algorithms/dsa_queue.htm) - dsa queue.
* [w3schools](https://www.w3schools.in/data-structures-tutorial/queue/) - queue.
* [geeksforgeeks](https://www.geeksforgeeks.org/abstract-data-types/) - abstract data types.
