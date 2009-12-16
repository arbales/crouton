require 'rubygems'
require 'sinatra'

load 'models.rb' 

class Application < Sinatra::Base
  register Sinatra::Warden

  get '/admin' do
    authorize!('/login') # require session, redirect to '/login' instead of work
    haml :admin
  end

  get '/dashboard' do
    authorize! # require a session for this action
    haml :dashboard
  end
end
