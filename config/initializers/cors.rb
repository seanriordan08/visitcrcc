
#Required to make Devise play nice with CORS (ie. as required by Biblia)
Rails.application.config.middleware.insert_before 0, 'Rack::Cors' do
  allow do
    origins '*'

    resource '/assets/*', headers: :any, methods: [:get]
  end
end

