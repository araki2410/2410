#!/usr/bin/ruby
# -*- coding:utf-8 -*-
require './board'

hoge = Board.new()
player = 2
turn = 0

while true
  if turn > 9
    break
  end
  
  whos_turn = turn%player + 1
  print "input x,y:"
  tag = gets.chomp!
  if /(\d)[\S+|\s+](\d)/ =~ tag
    x,y = $1.to_i, $2.to_i
  else
    print "bad input \n"
    redo
  end
  
  if hoge.put_to_stone(x-1,y-1,whos_turn) != 0
    print "bad hoge \n"
    turn -= 1
  end
  hoge.show(1)
  
  if hoge.line_check() == 0
    turn += 1
  else
    puts whos_turn
    break
  end
end
