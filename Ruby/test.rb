#!/usr/bin/ruby
# -*- coding:utf-8 -*-

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
puts numA.to_i + numB.to_i
print("A*3=")
puts numA.to_i * 3


