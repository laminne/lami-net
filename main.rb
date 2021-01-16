require "webrick"

address = ARGV[0]
port = ARGV[1]

if address.nil? || port.nil?
	p "port and bind-address is nil."
end

server = WEBrick::HTTPServer.new({
	:DocumentRoot => './',
	:BindAddress => address,
	:Port => port,})

server.start
