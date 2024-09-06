require 'sinatra'

class App < Sinatra::Base
  # root route
  get '/'  do
    "Hello World"
  end
end
