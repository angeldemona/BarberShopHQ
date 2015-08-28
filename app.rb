require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

set :database, "sqlite3:barbershop.db"

class Clients < ActiveRecord::Base

    validates :name, presence: true,  length: {minimum: 3}
    validates :phone, presence: true 
    validates :datetime, presence: true 
    validates :color, presence: true 
end

class Barbers < ActiveRecord::Base

	end

before do 
 @barbers = Barbers.all
	  end


get '/' do	
	erb :index			
end

get '/visit' do
	@c = Clients.new
	erb :visit
	end

post '/visit' do
 @c = Clients.new params[:client]
 if @c.save
 erb "<h2>Thanks you, you are writted </h2>"
else
	 @error = @c.errors.full_messages.first
	erb :visit
end
 end

 get '/barber/:id' do
 	erb :barber

 end
