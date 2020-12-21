#ecoding: utf-8

require "httparty"

describe "POST /books" do
  before do
    payload = { title: "O livro dos Bugs", author: "João Junior", isbn: "jj001" }

    @resp = HTTParty.post(
      "http://localhost:4567/books",
      body: payload.to_json,
    )
  end

  it "deve retornar 201" do
    expect(@resp.code).to eql 201
  end
end
