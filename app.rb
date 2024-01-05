require 'sinatra/base'

class MyWay < Sinatra::Base
  #configure do
  #  set :bind, '0.0.0.0'
  #  enable :logging
  #end
  get '/' do
  #  'Hello new world!'
    delay = params['delay']
    t1 = Time.now.to_f * (10 ** 9) 
    sleep delay.to_i/1000000000 #seconds
    t2 = Time.now.to_f * (10 ** 9) 
    delta = t2 - t1
    "time #{t1} xxx #{t2} diff:#{delta}¥n"
    #how to calc time(ns)
    ##Time.now.to_f * (10 ** 9)
    ##Time.now.to_i * (10 ** 9) + time.nsec ->error
    ##Time.now.to_i ->only part of second(not nano)
    ##Time.at(0, 0, :nanosecond) ->?
    ##Time.now.nsec.to_i -> only part of ns
  end
end