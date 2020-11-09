require "sinatra"

get "/" do
  content_type "application/json"
  return { message: "Welcome to book Api from QA Ninja!" }.to_json
end
