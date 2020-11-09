require "sinatra"

get "/" do
  content_type "application/json"
  return { message: "Welcome to book Api from QA Ninja!" }.to_json
end

get "/books" do
  content_type "application/json"
  books = [
    { title: "Dom Casmurro", author: "Machado de Assis", isbn: "abd2001" },
    { title: "A marca de uma lágrima", author: "Pedro Bandeira", isbn: "abd2002" },
    { title: "Moby Dick", author: "Hernan Melville", isbn: "abd2003" },
  ]
  return books.to_json
end
