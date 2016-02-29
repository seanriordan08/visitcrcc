Rails.application.config.middleware.insert_before 0, 'Rack::Cors' do
  allow do
    origins '*'

    resource '/assets/*', headers: :any, methods: [:get]
  end
end

#Required to make Devise play nice with CORS (ie. as required by Biblia)

# config.middleware.insert_before 0, "Rack::Cors" do
#   allow do
#     origins '*'
#     resource '*', :headers => :any, :methods => [:get, :post, :options]
#   end
# end