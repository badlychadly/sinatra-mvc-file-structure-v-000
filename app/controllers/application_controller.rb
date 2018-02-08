class ApplicationController < Sinatra::Base

  configure do
  	set :views, "app/views"
  	set :public_dir, "public"
  end

  get "/" do
  	erb :index
  end

  get '/dogs' do
    Dog.all.each{|d| "#{d.name}"}
  end
end
