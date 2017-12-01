require "socket"

c=TCPSocket.new('192.168.124.128',57172)
c.puts"hello sir  "
puts c.recv(100)
c.close
