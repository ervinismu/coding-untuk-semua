}plspapalsplaplsals
### Ruby
-   [Book Ruby Basic](https://launchschool.com/books/ruby/read/introduction)
-   [Book Ruby OOP(Object Oriented Programming)](https://launchschool.com/books/oo_ruby/read/introduction)
-   [Ruby Code Convention](https://github.com/rubocop-hq/ruby-style-guide)
-   [Ruby Monk](https://rubymonk.com/)
-   [Hackerrank Ruby](https://www.hackerrank.com/domains/ruby)
-   [Codecademy Ruby](https://www.codecademy.com/learn/learn-ruby)
-   [Awesome Ruby Project](http://awesome-ruby.com/)
-   [IdRails](http://www.idrails.com/series)
-   [Railscasts](http://railscasts.com/)

### Ruby on Rails
-   [Ruby on Rails Book](https://www.railstutorial.org/book)
-   [Ruby on rails api](https://scotch.io/tutorials/build-a-restful-json-api-with-rails-5-part-one)

## Ruby
-   [OOP Ruby](https://gitlab.com/ervinismu/binar-backend-class/blob/master/OOP.md)

## Postgresql
-   [Setup Postgresql](https://www.digitalocean.com/community/tutorials/how-to-install-and-use-postgresql-on-ubuntu-16-04)

### Ruby Basic
- Stylish Ruby
	*	two spaces
	*	using snake_case for define method/variable/file
	*	CamelCase when declare variable , example: MyFirstClass
	*	block using do/end, prefer {} when expression fits on one line

- Type Data
   *   Array <br />
       Ruby arrays are ordered collections of objects. They can hold objects like integer, number, hash, string, symbol or any other array. <br />
       example : <br />
       arr = [1,2,3,4,5]
   *   Hashes <br />
       A Hash is a collection of key-value pairs like this: “employee” => “salary”. 
       example : <br />
       hashes = {:name => "erpin"}
   *   Boolean <br />
       true/false <br />
       Operators : <br />
       ! , != , == , > , < , <= , >= , && , ||
   *   Symbol <br  />
       Symbol is similar to String but a symbol can’t be changed.The symbol, however, is immutable. This means that its state can’t be modified after it is created and it will always be the same size in memory. <br />
       example: <br />
       :name <br />
       When should you use Symbols? <br />
       -   To Identify Something
       -   Used in method calls
   *   Number <br />
       -   Float <br />
           Float is basically with decimal points. e.g. 34.09988776.
       -   Fixnum <br />
            Fixnum known as an Integer. A number with no decimal point, e.g. 52.
	*	String <br/>
		using ( " " ) or (' ') for string. <br />
        Methods are often used daily : <br />
        "Parthiv" + "Patel" <br />
         => "ParthivPatel" <br />
        "hi" + "hi" + "hi" <br />
         => "hihihi" <br />
        "hi" * 3 <br />
         => "hihihi" <br />
        "1" + "1" + "1" <br />
         => "111" <br />
        "1" * 3 <br />
         => "111" <br />
        "hello".upcase <br />
         => "HELLO" <br />
        "hello".capitalize <br />
         => "Hello" <br />
        "hello".length <br />
         => 5 <br />
        "hello".reverse <br />
         => "olleh" <br />

-	Operations
	*	Adding <br/>
		example: 1 + 1
	*	Substraction <br/>
		example:	1 - 1
	*	Multiply <br/>
		example: 4 * 4
	* Divide <br/>
		example: 16 / 4
	*	Modulus <br/>
		16 % 4
	* Comparison <br/>
		using (==, !=)

- Basic Data Structure
	*	Arrays <br/>
		[1,2,3,4,5,6,7,8,9,10]
		Array is used to organize information into an ordered list. The list can be made up of strings, floats, booleans, or and other data types.
	*	Hashes <br/>
		{:dog => "heli", :cat => "sweety"}
		cometimes referred to as a dictionary, is a set of key-value pairs. It is represented with curly braces { }. A key-value pair is an association where a key is assigned a specific value.

-	Variable <br/>
	Their sole purpose is to label and store data in memory. Think hard about the names.
	name = Erpin
	*	Variable Scope <br/>
		Inner scope can access variable initialized in an outer scope, but not vice versa.
	block wirh each, times , etc

-	Methods <br/>
You'll often a piece of code that needs to be executed many times in a program. Instead of writing that piece of code over and over, there's feature in most programming languages called a procedure, which allows you to extract the common code to one place.
	example: <br/>
		def adding val1, val2 <br/>
			puts val1 + val2 <br/>
		end <br/>
	call with: <br/>
		adding(1,2) or adding 1,2

-	Flow Control <br/>
	*	Conditionals <br/>
		Conditionals are formed using a combination of if statements and comparison operators (<,>,<=,>=,!=, &&, ||). They are basic logical structures that are defined with the reserved words (if, else, elsif, and)
	example: <br/>
	1	puts "Put in a number" <br/>
  2 a = gets.chomp.to_i <br/>
  3 if a <= 3 <br/>
  4 ··puts "your input less than 3" <br/>
  5 elsif a >= 6 <br/>
  6 ··puts "your input greater than 3" <br/>
  7 else <br/>
  8 ··puts "your input is #{a}" <br/>
  9 end <br/>
	*	Ternary Operator <br/>
		The ternary operator is a common Ruby idiom that makes a quick if/else statement easy and keeps it all on one line.
		true ? "this is true" : "this is false"

-	Loop <br/>
	loop do  <br/>
		puts "ctrl + c for stop this loop" <br/>
	end
    *   Controling Loop <br />  
    iterations = 1 <br/>
    loop do <br/>
     puts “Number of iterations = #{iterations}” <br/>
     iterations += 1 <br/>
     break if iterations > 5 <br/>
    end <br/>
    *   While Loop <br />
    arr = [1,2,3,4,5] <br />
    i = 0 <br />
    while i < arr.length <br />
        item = arr[i] <br />
        puts "this is a #{item}" <br />
        i += 1 <br />
    end <br />
    * times <br />
        7.times do <br />
          puts "Stop hitting yourself!" <br />
        end <br />

-   Iterations<br />
    Iterators are nothing but methods supported by collections. <br />
    Objects that store a group of data members are called collections. In Ruby, arrays and hashes can be termed collections. <br />
    example : <br />
    *   each <br />
        #!/usr/bin/ruby<br />
        ary = [1,2,3,4,5]<br />
        ary.each do |i|<br />
           puts i<br />
        end<br />
        You always associate the each iterator with a block. It returns each value of the array, one by one, to the block. <br /> 
        The value is stored in the variable i and then displayed on the screen. <br />

-   Looping vs Iterasi<br />
    Looping is a programming construct that allows you to tell your program to do something a certain number of times, or until a certain condition is met.<br /> 
    It is a mechanism to repeat a selection of code. <br />
    Iteration, on the other hand, is a way to operate on a collection object, like an array, and do something with each element in that collection.<br />
    *   While Loop <br />
        brothers = ["Tom", "Tim", "Jim"]<br />
        count = 0<br />
        while count <= brothers.length-1 <br />
          puts "Stop hitting yourself #{brothers[count]}!" <br />
          count += 1 <br />
        end<br />
    *   Each <br />
        primary_colors = ["Red", "Yellow", "Blue"]<br />
        primary_colors.each do |color|<br />
          puts "Primary Color #{color} is #{color.length} letters long."<br />
        end<br />
