OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '270385110130678', '0280a096ff8601593803db08daadfa70',:image_size => 'large'
 
end