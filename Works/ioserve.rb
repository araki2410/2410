#!/usr/bin/ruby
# -*- coding:utf-8 -*-
require 'socket'
hostname = "nboot2.cs.uec.ac.jp"
host = "130.153.192.3"
port = 2410
soc = TCPServer.new(port)
loop do
#  serv = soc.accept
  Thread.start(soc.accept) do |serv|
#    print client.gets
    p serv.peeraddr

    while buf = serv.gets
      p buf
      serv.puts "OK"
    end

    sleep(0.5)


    client.close
  end

end
soc.close
