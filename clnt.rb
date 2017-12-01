
require "socket"

if ARGV.length >=2
  host = ARGV.shift
then 
  host = "localhost"
end
print (("Trying ") , host ,( "...") )
STDOUT.flush
s=TCPSocket.open(host,ARGV.shift)
print(" done\n")
print("addr: ", s.addr.join(":"),"\n")
while line = gets()
	s.write(line)
	print(s.readline)
end
s.close

