# config/initializers/recaptcha.rb
Recaptcha.configure do |config|
  config.site_key  = '6LcL66IUAAAAAA_kQHU1997bGbxO1TkNATWk5jqj'
  config.secret_key = '6LcL66IUAAAAANmMZVMtuzP1Eqc1INSQPrdzGFfZ'
  # Uncomment the following line if you are using a proxy server:
  config.proxy = 'http://https://28ee0248daf84dc6acd4c61b427f67f7.vfs.cloud9.us-east-2.amazonaws.com/.au:8080'
end