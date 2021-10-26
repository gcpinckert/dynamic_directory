require 'sinatra'
require "sinatra/reloader"
require 'tilt/erubis'

get "/" do
  @pages = Dir.glob("public/*").map { |file| File.basename(file, ".html")}.sort
  @pages.reverse! if params[:sort] == "desc"
  erb :home
end