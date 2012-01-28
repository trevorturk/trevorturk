require 'sinatra'

get '/' do
  send_file File.expand_path('../index.html', __FILE__)
end

not_found do
  redirect "http://trevorturk.wordpress.com#{request.path_info}"
end
