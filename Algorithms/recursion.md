# Recursion

## Apa itu Recursive ?
> Rekursi dalam ilmu komputer adalah metode di mana solusi untuk masalah tergantung pada solusi untuk contoh yang lebih kecil  
> dari masalah yang sama (sebagai lawan dari iterasi).  
> ~ Graham, Ronald; Donald Knuth; Oren Patashnik (1990). Concrete Mathematics. Chapter 1: Recurrent Problems.

## Contoh Ruby Recursive
Berikut beberapa contoh yang sering digunakkan untuk belajar recursive.  
Akan saya berikan contoh dengan iterasi dan recursive agar bisa lebih mudah dipahami

#### Fibonacci

5 angka pertama fibonacci terlihat seperti 0, 1, 1, 2, 3 -  
angka berikutnya adalah jumlah dari 2 angka sebelumnya.
```ruby
  # contoh menggunakkan iteration
  def iteration_fib(num)
    a, b = 0, 1
    while b < num do
      puts b
      a,b = b,a+b
    end
  end
  
  # contoh menggunakkan recursive
  def recursive_fib(num)
    return num if num < 2
    recursive_fib(num-1) + recursive_fib(num-2)
  end
```

#### Factorial

Faktorial dalam matematika sering ditulis sebagai 5! yang diartikan 5 * 4 * 3 * 2 * 1
```ruby
  # contoh menggunakkan iterasi
  def iteration_fact(num)
    return 1 if num <= 1
    sum = 1
    num.times {|n| sum *= (n + 1) }
    sum
  end
  
  # contoh menggunakkan recursive
  def recursive_fact(num)
    return 1 if num <= 1
    num * recursive_fact(num - 1)
  end
```

## Recursive vs Iteration
Konsep recursive dan iteration adalah dengan melakukkan serangkaian intruksi berulang kali, perbedaan diantara
keduanya adalah `recursive menggunakkan pemanggilan metode/fungsi dimana metode/fungsi yang dipanggil adalah sama`,
sedangkan `iteration menggunakkan loop berulang kali sampai kondisi tertentu dipenuhi`,
recursive dan iteration tergantung pada suatu kondisi untuk mengetahui kapan mereka harus berhenti.

Dalam Ruby seringkali lebih baik untuk menghindari recursive dan menggunakan iteration sebagai gantinya. Ruby (dan sebagian besar bahasa pemrograman penting) memiliki konstruksi bahasa yang sangat berguna untuk membantu pengulangan data.

Recursive dapat menjadi lebih lambat dan menggunakan lebih banyak memori daripada iteration karena sejumlah alasan yang dibahas di sini di [Stack Overflow](https://stackoverflow.com/questions/3021/what-is-recursion-and-when-should-i-use-it/3093#3093).

Bahasa tertentu, terutama bahasa fungsional yang berhubungan dengan data yang tidak dapat diubah (Elixir, Haskell, dll ...), tidak memiliki konstruksi bahasa sama sekali untuk menangani iteration dan semuanya dilakukan melalui recursive. Bahasa-bahasa ini dioptimalkan untuk recursion menggunakan teknik yang disebut [tail call optimization](https://en.wikipedia.org/wiki/Tail_call) dan juga dilengkapi dengan pattern matching yang berguna untuk berurusan dengan head dan tail array

#### Referensi
* [stackoverflow](https://stackoverflow.com/questions/3021/what-is-recursion-and-when-should-i-use-it/3093#3093) - what is recursive and when should i use it
* [ruby bastards book](http://ruby.bastardsbook.com/chapters/recursion/) - recursion
* [leighhalliday](https://www.leighhalliday.com/recursion-in-ruby) - recursive in ruby
* [ruby guides](https://www.rubyguides.com/2015/08/ruby-recursion-and-memoization/) - ruby recursive and memorization
