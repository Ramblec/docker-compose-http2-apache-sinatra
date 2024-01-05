require 'sinatra/base'

class MyWay < Sinatra::Base
  get '/' do
  "Hello, World!"
  end
end
