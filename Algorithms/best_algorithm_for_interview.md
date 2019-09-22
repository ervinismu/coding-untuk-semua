1. Depth First Search
2. Breadth First Search
3. Matching Parenthesis
4. Hash Tables
5. Variable/Pointers Manupulation
6. Reversing a Linked List
7. Sorting Fundamentals
  - Quick sort
  - Merge Sort
  - Bubble sort
  - etc.
8. Recursion
9. Custome Data Structure
10. Binary Search
    Pencarian Biner: Langkah-langkah tentang cara kerjanya:
    Untuk menemukan indeks elemen e dengan nilai tertentu:
    1. Mulai dengan array yang diurutkan dalam urutan menurun.
    2. Di setiap langkah: Pilih elemen tengah array m dan bandingkan dengan e. Jika nilai elemen sama, maka kembalikan indeks m. Jika e lebih besar dari m, maka e harus berada di subarray kiri. Jika m lebih besar dari e, maka e harus berada di subarray kanan.
    3. Ulangi langkah-langkah itu di subarray baru.
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

