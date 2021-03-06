1. **Depth First Search**

2. **Breadth First Search**

3. **Matching Parenthesis**

4. **Hash Tables**

5. **Variable/Pointers Manupulation**

6. **Reversing a Linked List**

7. **Quick Sort**

8. **Recursion**

9. **Custome Data Structure**

10. **Binary Search**  
    `Pencarian Biner`: Langkah-langkah tentang cara kerjanya, untuk menemukan indeks elemen e dengan nilai tertentu:
    * Mulai dengan array yang diurutkan dalam urutan menurun.
    * Di setiap langkah: Pilih elemen tengah array m dan bandingkan dengan e. Jika nilai elemen sama, maka kembalikan indeks m. Jika e lebih besar dari m, maka e harus berada di subarray kiri. Jika m lebih besar dari e, maka e harus berada di subarray kanan.
    * Ulangi langkah-langkah itu di subarray baru.
    ```ruby
      # CONTOH KODE BINARY SEARCH
      def binary_search(array, item)
        # definisikan index pertama dan terakhir array
        first_index  = 0
        last_index   = array.length - 1

        # lakukkan perulangan jika 
        # first_index kurang dari sama dengan last_index
        while first_index <= last_index

          # temukan index tengah dalam array
          middle_index = (first_index + last_index) / 2

          if array[middle_index] == item
            return puts "#{item} ditemukkan pada index #{middle_index}"

            # jika nilai tengah array lebih besar dari item
            # maka kita harus berada di sub-array sebelah kiri
          elsif array[middle_index] > item
            last_index = middle_index - 1
          else
            first_index = middle_index + 1
          end
        end

        # handle response jika tidak ditemukan
        puts "#{item} tidak ditemukkan didalam array." if first_index > last_index
      end
    ```

11. **Quick Sort**
    Quick Sort adalah algoritma penyortiran yang sangat efisien dan didasarkan pada pemartisian array data menjadi array yang lebih kecil. Sebuah array besar dipartisi menjadi dua array yang salah satunya menyimpan nilai lebih kecil dari nilai yang ditentukan, katakan pivot, berdasarkan pada mana partisi dibuat dan array lain memiliki nilai lebih besar dari nilai pivot.
    Quick Sort sebuah partisi dan panggil dirinya secara berulang dua kali untuk mengurutkan dua sub-panel yang dihasilkan. Algoritma ini cukup efisien untuk set data berukuran besar karena kompleksitas kasus rata-rata dan terburuknya adalah O(n2), di mana n adalah jumlah item.
    ```ruby
    def quick_sort(a,lo,hi)
      if lo < hi
        p = partition(a,lo,hi)
        quick_sort(a,lo,p-1)
        quick_sort(a,p+1,hi)
      end
      return a
    end

    def partition(a,lo,hi)
      i     = lo
      j     = hi+1
      pivot = a[lo]
      while true
      #Loop to increment i
          begin
              i += 1
              break if i == hi
          end while a[i] < pivot
      #Loop to increment j
          begin 
              j-=1
              break if j==lo
          end while a[j]>pivot
      # break the loop if pointers cross
          break if i>=j
      #Swap arr[i] and arr[j]
          temp = a[i]
          a[i] = a[j]
          a[j] = temp
      end
      # Swap arr[lo] with arr[j]
      temp  = a[lo]
      a[lo] = a[j]
      a[j]  = temp
      return j
    end

    quick_sort([12,3,1,2,4,70,89,3,3],0,8)
    ```

12. **Merge Sort**  
    Merge sort adalah teknik pemilihan berdasrkan teknik divide and conquer. Dengan kompleksitas waktu terburuk menjadi O(nlogn). Pertama-tama membagi array menjadi dua bagian yang sama dan kemudian menggabungkannya dengan cara diurutkan.  
    Langkah-langkah kerja merge sort :
    - Langkah 1 - jika hanya satu elemen dalam daftar itu sudah diurutkan, kembali.
    - Langkah 2 - bagilah daftar secara rekursif menjadi dua bagian sampai tidak dapat lagi dibagi.
    - Langkah 3 - menggabungkan daftar yang lebih kecil ke dalam daftar baru dalam urutan diurutkan.
    ```ruby
    def merge_sort(array)
      if array.length <= 1
        array
      else
        mid    = (array.length / 2).floor
        left   = merge_sort(array[0..mid-1])
        right  = merge_sort(array[mid..array.length])
        merge(left, right)
      end
    end

    def merge(left, right)
      if left.empty?
        right
      elsif right.empty?
        left
      elsif left[0] < right[0]
        [left[0]] + merge(left[1..left.length], right)
      else
        [right[0]] + merge(left, right[1..right.length])
      end
    end
    ```

13. **Bubble Sort**  
    `Bubble Sort` adalah algoritma pengurutan yang sederhana, bekerja dengan berulang kali untuk menukar element yang berdekatan jika urutannya salah.
    ```ruby
    def bubble_sort(array)
      swapped     = true
      total_array = array.length
      while swapped do
        swapped = false
        (total_array - 1).times do |i|
          if array[i] > array[i+1]
            array[i], array[i+1] = array[i+1], array[i]
            swapped = true
          end
        end
        break if swapped == false
      end
      array
    end
    ```

14. **Queue**
    ```ruby
      class MyQueue
        # untuk melakukkan error handling
        QueueFull  = Class.new(StandardError)
        QueueEmpty = Class.new(StandardError)

        attr_reader :queue
    
        # constructor
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
          # menampilkan error jika data kosong
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
* [geeksforgeeks](https://www.youtube.com/watch?v=JSceec-wEyw) - Merge sort video
* [geeksforgeeks](https://www.geeksforgeeks.org/bubble-sort/) - bubble sort
* [hackerrank](https://www.youtube.com/watch?v=6Gv8vg0kcHc) - bubble sort video
* [coderwall](https://coderwall.com/p/ssdcua/bubble-sort-in-ruby) - bubble sort in ruby
* [quora](https://www.quora.com/Which-sorting-algorithm-is-best-and-why) - which sorting algorithm is best and why
* [medium](https://medium.com/@limichelle21/read-it-learn-it-build-it-sorting-algorithms-in-ruby-ead04b04baa6) - read it learn it sorting algorithms in ruby
