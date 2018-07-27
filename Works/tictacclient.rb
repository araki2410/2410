#!/usr/bin/ruby
# -*- coding:utf-8 -*-

require "socket"

port = 24100
#usernameの取得
#puts "usernameを入力してください"
#user = gets.to_s

iam = 1
if ARGV 
  iam = ARGV[0]
end

def mainSystem(who, port)
#  puts "input message"
  msg = STDIN.gets.to_s
#  if msg == "exit"
#    exit!
#  end
  port.puts "#{who}:#{msg}:"
#  puts "Send: #{Time.now}"

  print port.gets

#  puts "Receive: #{Time.now}"
end



begin
  #localhostの20000ポートに接続
  #  port = TCPSocket.open("localhost",2410)
  soc = TCPSocket.open("130.153.192.100" , port) #gp08 in ylab

rescue
  puts "TCPSocket.open failed :#$!"
  puts "Please run server program"
  exit
else
  #  Process.fork do
    loop do
      mainSystem(iam, soc)
    end
#  while true
    
    #mainSystem(soc)
#  end
#  soc.close
end
