# 📚 Book API with Sinatra and Automated Tests

Study project focused on both **REST API development and API test automation using Ruby**.

The project implements a simple Books API with **Sinatra** and **MongoDB/Mongoid**, while automated tests are written with **RSpec** and **HTTParty**.

The main goal was to understand the API lifecycle from two perspectives: building the service and validating its behavior through automated tests.

> ⚠️ **Project Status**
>
> This is an older study project and uses dependency versions from the period when it was created.
>
> The repository is maintained as part of my QA automation portfolio and learning history.

## 🛠 Tech Stack

- Ruby
- Sinatra
- Sinatra Contrib
- MongoDB
- Mongoid
- RSpec
- HTTParty
- Bundler

## 🎯 Project Purpose

The objective of this project was to explore both **API development and automated API testing**.

Topics covered include:

- Building REST endpoints with Sinatra
- Working with JSON requests and responses
- Data persistence using MongoDB
- Modeling data with Mongoid
- GET and POST operations
- API response validation
- Automated API testing with RSpec
- HTTP requests using HTTParty

## 📁 Project Structure

```text
desenvolvimentoetesteapicomsinatra/
├── spec/
│   ├── books/
│   ├── get_spec.rb
│   └── spec_helper.rb
├── app.rb
├── mongoid.yml
├── Gemfile
├── Gemfile.lock
├── .rspec
└── README.md
```

## 🔌 API Endpoints

The application exposes a simple Books API.

### Welcome endpoint

```http
GET /
```

Example response:

```json
{
  "message": "Welcome to book Api from QA Ninja!"
}
```

### List books

```http
GET /books
```

Returns the books stored in the database.

### Create a book

```http
POST /books
```

Example payload:

```json
{
  "title": "Clean Code",
  "author": "Robert C. Martin",
  "isbn": "9780132350884"
}
```

A successful request returns HTTP status:

```text
201 Created
```

## 🗄 Data Model

The API stores book information using Mongoid.

A book contains:

- `title`
- `author`
- `isbn`

## ⚙️ Installation

Install Bundler if necessary:

```bash
gem install bundler
```

Install the project dependencies:

```bash
bundle install
```

A MongoDB instance is also required because the application uses Mongoid for persistence.

Database configuration is defined in:

```text
mongoid.yml
```

## ▶️ Running the API

Run the Sinatra application:

```bash
ruby app.rb
```

The API can then be accessed locally using the port configured by Sinatra.

## 🧪 Running the Tests

The automated tests are written with RSpec.

Execute the test suite with:

```bash
bundle exec rspec
```

The tests use **HTTParty** to interact with the API and validate its responses.

## 🧠 What This Project Demonstrates

This project helped me understand not only how to automate API tests, but also how the service being tested is implemented.

It covers concepts such as:

- REST API architecture
- Backend routing
- JSON payloads
- HTTP status codes
- Database persistence
- API test automation
- Request and response validation
- Ruby backend development

## 📚 Learning Context

This repository was created as part of my studies in **API development and test automation with Ruby**.

It represents an important part of my learning path because it combines both sides of API testing: **creating the service and validating it through automated tests**.

## 📌 Project Status

This repository is maintained as a **study and reference project**.

Some dependencies may require updates to work with modern Ruby environments, but the project remains available as part of my QA and test automation portfolio.
