require 'socket'

server = 'irc.freenode.net'
port = 6667
socket = TCPSocket.open(server, port)

nickname = 'TacBot'
channel = '#TacticalCode'

socket.puts "NICK #{nickname}"
socket.puts "USER #{nickname} 0 * #{nickname}"
socket.puts "JOIN #{channel}"
socket.puts "PRIVMSG #TacticalCode :I am so happy to be here!"

while message = socket.gets do
    puts message

    if message.match('^PING :')
        server = message.split(':').last
        puts "PONG #{server}"
        socket.puts "PONG #{server}"
    end 
end