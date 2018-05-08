require 'socket'
require 'thread'

server = TCPServer.open(6001)

begin
    Thread.start(server.accept) do |client|
        response = client.recv(100)
        puts response
        client.close
    end
end while(true)