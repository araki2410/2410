#!/usr/bin/ruby
# -*- coding:utf-8 -*-


require "socket"
#usernameの取得
#puts "usernameを入力してください"
#user = gets.to_s

def mainSystem(port)
  #送信内容の入力
#  puts "input message"
  msg = gets.to_s
  if msg == "exit"
    exit!
  end
  port.puts "#{msg}"
#  puts "Send: #{Time.now}"

  print port.gets

#  puts "Receive: #{Time.now}"
end



begin
  #localhostの20000ポートに接続
#  port = TCPSocket.open("localhost",2410)
#  port = TCPSocket.open("gp08.cs.uec.ac.jp",2410)
  port = TCPSocket.open("130.153.192.100" , 2410)

rescue
  puts "TCPSocket.open failed :#$!"
else
  while true
    mainSystem(port)
  end
  port.close
end
