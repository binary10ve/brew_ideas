begin
  facebook_config = YAML::load_file("#{Rails.root}/config/facebook.yml")[Rails.env]
  FACEBOOK_CLIENT_ID = facebook_config["client_id"]
  FACEBOOK_CLIENT_SECRET_KEY = facebook_config["client_secret_key"]
  
rescue LoadError
  p "Skydrive load error"
end

begin
  google_config = YAML::load_file("#{Rails.root}/config/google.yml")[Rails.env]
  GOOGLE_CLIENT_ID = google_config["client_id"]
  GOOGLE_CLIENT_SECRET_KEY = google_config["client_secret_key"]
  
rescue LoadError
  p "Skydrive load error"
end