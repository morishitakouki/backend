Rails.application.config.middleware.insert_before 0, Rack::Cors do
    allow do
      origins "localhost:3000", "https://rails-react-frontend-blog-e49b147a0c56.herokuapp.com"
  
      resource "*",
        headers: :any,
        expose: ["access-token", "expiry", "token-type", "uid", "client"], 
        methods: [:get, :post, :put, :patch, :delete, :options, :head]
    end
  end
  