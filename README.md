- Stylish Ruby
	*	two spaces
	*	using snake_case for define method/variable/file
	*	CamelCase when declare variable , example: MyFirstClass
	*	block using do/end, prefer {} when expression fits on one line

- Type Data
	*	Float
		1.234
	*	String
		using ( " " ) for string
	* Symbol
		using ( : )for refernces like a string but don't ever intend to print it to the screen or change
	
-	Operations
	*	Adding
		example: 1 + 1
	*	Substraction
		example:	1 - 1
	*	Multiply
		example: 4 * 4
	* Divide
		example: 16 / 4
	*	Modulus
		16 % 4
	* Comparison
		using (==, !=)

- Basic Data Structure
	*	Arrays
		[1,2,3,4,5,6,7,8,9,10]
		Array is used to organize information into an ordered list. The list can be made up of strings, floats, booleans, or and other data types.
	*	Hashes
		{:dog => "heli", :cat => "sweety"}
		cometimes referred to as a dictionary, is a set of key-value pairs. It is represented with curly braces { }. A key-value pair is an association where a key is assigned a specific value.

-	Variable
	Their sole purpose is to label and store data in memory. Think hard about the names.
	name = Erpin
	*	Variable Scope
		Inner scope can access variable initialized in an outer scope, but not vice versa.
	block wirh each, times , etc

-	Methods
You'll often a piece of code that needs to be executed many times in a program. Instead of writing that piece of code over and over, there's feature in most programming languages called a procedure, which allows you to extract the common code to one place.
	example:
		def adding val1, val2
			puts val1 + val2
		end
	call with:
		adding(1,2) or adding 1,2

-	Flow Control
	*	Conditionals
		Conditionals are formed using a combination of if statements and comparison operators (<,>,<=,>=,!=, &&, ||). They are basic logical structures that are defined with the reserved words (if, else, elsif, and)
	example:
	1	puts "Put in a number"
  2 a = gets.chomp.to_i
  3 if a <= 3
  4 ··puts "your input less than 3"
  5 elsif a >= 6
  6 ··puts "your input greater than 3"
  7 else
  8 ··puts "your input is #{a}"
  9 end
	*	Ternary Operator
		The ternary operator is a common Ruby idiom that makes a quick if/else statement easy and keeps it all on one line.
		true ? "this is true" : "this is false"

-	Loop
	loop do 
		puts "ctrl + c for stop this loop"
	end
