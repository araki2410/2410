#!/usr/bin/ruby
# -*- coding:utf-8 -*-
require 'socket'
require './board'

tictac = Board.new
player = 2
pl_list = {}
turn = 0
#hostname = "nboot2.cs.uec.ac.jp"
#host = "130.153.192.3"
port = 24100
soc = TCPServer.new(port)
loop do
  Thread.start(soc.accept) do |serv|

    #### Seat to player 
    if player > 0
      pl_list[serv.addr[3]] = player # {"adress" => player_num}
      player -=1
    else
      serv.puts "Error:0010: sorry, full player now!"
      serv.close
    end
    
#    p serv.peeraddr

    while buf = serv.gets
      p buf
      serv.puts "#{serv.addr}"
    end

    sleep(0.5)


    serv.close
    player += 1
  end

end
soc.close
