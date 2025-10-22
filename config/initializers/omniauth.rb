Rails.application.config.middleware.use OmniAuth::Builder do
  if Rails.env.development? || Rails.env.test?
    provider :github, "Ov23liX3c2SyFPDBHJ7k", "a8382672843d14bf64dcc623f74abc13a337df45"  
  else
    provider :github,   
      Rails.application.credentials.github[:client_id],
      Rails.application.credentials.github[:client_secret]
  end
end
