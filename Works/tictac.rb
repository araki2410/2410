#!/usr/bin/ruby
# -*- coding:utf-8 -*-

class Board
  def initialize(line=3)
    @board = []
    cal = Array.new(line,0)
    line.times do
      @board.push(cal)
    end
  end

  def put_to_stone(x,y,num)
    if @board[x][x] == 0
      @board[y][x] = num
    end
    print @board[y]
  end
end



hoge = Board.new()
hoge.put_to_stone(0,0,1)

#puts hoge.board

