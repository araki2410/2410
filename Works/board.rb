#!/usr/bin/ruby
# -*- coding:utf-8 -*-

module Tictac
  def line_check()
    board = []
    srant = [[@board[0][2],@board[1][1],@board[2][0]],[@board[0][0],@board[1][1],@board[2][2]]]
    board.concat(@board).concat(@board.transpose).concat(srant)
     for i in board
      line = i.uniq
      if line.length == 1 && line[0] != 0
        return line[0]
      end
     end
     return 0
  end
end

class Board
  include Tictac
  def initialize(line=3)
    @board = []
    line.times do
      cal = Array.new(line,0)
      @board.push(cal)
    end
  end

  def show(h=0)
    if h == 0
      return @board
    else
      for i in @board
        return i
      end
    end
  end

  def put_to_stone(x,y,num)
    if @board[y][x] == 0
      @board[y][x] = num
      return 0
    else
      return 1
    end
  end

  def remove_to_stone(x,y)
    if @board[y][x] != 0
      @board[y][x] = 0
      return 0
    end
  end
end
