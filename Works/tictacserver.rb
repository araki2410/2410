#!/usr/bin/ruby
# -*- coding:utf-8 -*-
require 'socket'
require './board'

tictac = Board.new
player = 2
pl_list = {}
turn = 0
port = 24100
soc = TCPServer.new(port)
loop do
  Thread.start(soc.accept) do |serv|
    puts "#{$$}"
    #### Seat to player 
    if player > 0
      pl_list[serv.addr[3]] = player # {"adress" => player_num}
      player -=1
      serv.puts("#{tictac.show}")
    else
      serv.puts("Error:0010: sorry, full player now!")
      serv.close
    end
    
#    p serv.peeraddr

    while buf = serv.gets
      if /(\d):(\d)\D(\d)/ =~ buf
        num, x, y = $1.to_i, $2.to_i, $3.to_i
        if tictac.put_to_stone(x,y,num) == 0
          serv.puts "correct"
        else
          serv.puts "missn"
        end
      end
      serv.puts "#{tictac.show}"
    end

    serv.close
    player += 1
  end

end
soc.close
