begin
  facebook_config = YAML::load_file("#{Rails.root}/config/facebook.yml")[Rails.env]
  FACEBOOK_CLIENT_ID = facebook_config["client_id"]
  FACEBOOK_CLIENT_SECRET_KEY = facebook_config["client_secret_key"]
  
rescue LoadError
  p "Skydrive load error"
end