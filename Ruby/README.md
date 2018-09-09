Question(09, Sep, 2018)
====

The $ mark is only used to indicate that you typed the command, so you do not hit it in practice.

download fruit_list.txt.
```shell
$ ls
$ wget https://github.com/araki2410/2410/blob/master/Ruby/fruit_list.txt
$ ls
```

This txt file contains fruit name and that price.
 
## Number_1 "*Read the file.*"
Read and output "fruit_list.txt" in Ruby_program.

### Example_1
```shell
$ ./readfile.rb
apple,10
pineapple,20
melon,25
watermelon,20
papaya,15
dragonfruit,20
orange,25
```

## Number_2 "*Reply the price.*"
Cook the Number_1.

Reply the price if receive a fruitname.

### Example_2
```shell
$ ./reply.rb
> apple
10

$ ./reply.rb
> papaya
15

$ ./reply.rb
> cherry
Sorry, I don't have it. 
```


## Number_3 "*Let's develop it yourself*"
- Any times...
- output total price.
- output receipt.
- discount 1 baht when odd price (1,3,5,7,9,11...).

----
# Hints

This section include the spoiler.

## hint_1
- File.open
```ruby
File.open('fruit.txt', "r" ) do |text|
  while line  = text.gets   # read from text one per line to "line".
      puts line
  end
end
```

or

```ruby
text = File.open("fruit.txt", "r")
while line = text.gets         # read from text one per line to "line".
  puts line
end
```


## hint_2

- gets
```ruby
print "TYPE TEXT\n"
stdin = gets.chomp!
puts stdin
```
- split()
```ruby
text = "apple,orange,banana"
print text.split(",")

text = "hoge piyo, fiz baz, foo bar"
print text.split(",")
print text.split(" ")

```

- .to_i
```ruby
numA = "24"
numB = "10"

printf(" number_A = %s \n number_B = %s \n\n",numA, numB)
print("A+B=")
puts numA + numB
print("A*3=")
puts numA * 3

# You can overwrite

numA = numA.to_i
numB = numB.to_i

print("\n use .to_i \n")
print("A+B=")
puts numA + numB
print("A*3=")
puts numA * 3

```

-Hash
```ruby
dict = Hash.new() # dict = {}
dict["apple"] = 20
dict["orange"] = 25

print dict
puts dict["apple"]
puts dict["orange"]

```

## hint_3
- while end

if you can't stop, type C-c (mean "Ctrl"+"c").

```ruby
i = 0
while i < 10
 i += 1
 puts i     
end
```
```ruby
i = 0
while i <= 10
 i += 1
 puts i
end
```
```ruby
i = 0
while i < 10
  i += 1
  puts i
  if i == 5
    break
  end   
end
```
```ruby
sum = 0
while true
  price = gets.to_i
  sum += price
  print sum
end
```

# HELP
```shell
$ where ruby
/usr/bin/ruby
```
In this case, "/usr/bin/ruby" is path.


So, write to program head.
```
#!/usr/bin/ruby
# -*- coding:utf-8 -*-

puts "hoge"
```
