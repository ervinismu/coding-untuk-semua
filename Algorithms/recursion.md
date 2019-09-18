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

#### Recursive vs Iteration
Konsep recursive dan iteration adalah dengan melakukkan serangkaian intruksi berulang kali, perbedaan diantara keduanya  
adalah `recursive menggunakkan pemanggilan metode/fungsi dimana metode/fungsi yang dipanggil adalah sama`, sedangkan  
`iteration menggunakkan loop berulang kali sampai kondisi tertentu dipenuhi`.  
Recursive dan iteration tergantung pada suatu kondisi untuk mengetahui kapan mereka harus berhenti.

#### Referensi
* [stackoverflow](https://stackoverflow.com/questions/3021/what-is-recursion-and-when-should-i-use-it/3093#3093) - what is recursive and when should i use it
* [ruby bastards book](http://ruby.bastardsbook.com/chapters/recursion/) - recursion
* [leighhalliday](https://www.leighhalliday.com/recursion-in-ruby) - recursive in ruby
* [ruby guides](https://www.rubyguides.com/2015/08/ruby-recursion-and-memoization/) - ruby recursive and memorization
