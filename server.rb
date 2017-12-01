require 'socket'

#listen and bind are involved in TCPServer, initialize
server_socket=TCPServer.new '192.168.124.128',57172

client, client_sockaddr = server_socket.accept

data = client.recvfrom( 20 )[0].chomp
puts "I need 10 '#{data}'"


client.puts "You said : #{data}"

sleep 1
server_socket.close

