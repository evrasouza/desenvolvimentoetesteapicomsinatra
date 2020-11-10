require "sinatra"
require "mongoid"

# DB Connect
Mongoid.load! "mongoid.yml"

class Book
  include Mongoid::Document

  field :title, type: String
  field :author, type: String
  field :isbn, type: String
end

get "/" do
  content_type "application/json"
  return { message: "Welcome to book Api from QA Ninja!" }.to_json
end

get "/books" do
  content_type "application/json"
  return Book.all.to_json
end
