require 'socket' # Get socket from stdlib

server = TCPServer.open(2000)  # Socket to losten on port 2000
loop {                         # Servers run forever
  client = server.accept       # Wait fo a client to connect
  client.puts(Time.now.ctime)  # Send the time to the client
  client.puts "Closing the connection. Bye!"
  client.close                 # Disconnect from the client
}