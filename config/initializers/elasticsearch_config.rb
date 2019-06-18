# require 'faraday/middleware'
# require 'faraday_middleware/aws_signers_v4'

# Searchkick.client =
#   Elasticsearch::Client.new(
#     url: ENV["ELASTICSEARCH_URL"],
#     transport_options: {request: {timeout: 10}}
#   ) do |f|
#     # f.use FaradayMiddleware::Gzip
#     f.request :aws_signers_v4, {
#       credentials: Aws::Credentials.new(ENV["AWS_ACCESS_KEY_ID"], ENV["AWS_SECRET_ACCESS_KEY"]),
#       service_name: "es",
#       region: "us-east-2"
#     }
#   end

# ENV["ELASTICSEARCH_URL"] = "https://es-domain-1234.us-east-1.es.amazonaws.com"
# Searchkick.aws_credentials = {
#   access_key_id: ENV['AWS_ACCESS_KEY_ID'],
#   secret_access_key: ENV['AWS_SECRET_ACCESS_KEY'],
#   region: "us-east-1"
# }

# require 'faraday_middleware'
# require 'faraday_middleware/aws_sigv4'
# require 'pp'


# conn = Faraday.new(url: 'https://apigateway.us-east-1.amazonaws.com') do |faraday|
#   faraday.request :aws_sigv4,
#     service: 'apigateway',
#     region: 'us-east-1',
#     access_key_id: ENV['AWS_ACCESS_KEY_ID'],
#     secret_access_key: ENV['AWS_SECRET_ACCESS_KEY']
#   # see http://docs.aws.amazon.com/sdk-for-ruby/v3/api/Aws/Sigv4/Signer.html

#   faraday.response :json, content_type: /\bjson\b/
#   faraday.response :raise_error

#   faraday.adapter Faraday.default_adapter
# end

# res = conn.get '/account'

# pp res.body
#=> {"_links"=>
#     {"curies"=>
#       {"href"=>
#         "http://docs.aws.amazon.com/apigateway/latest/developerguide/account-apigateway-{rel}.html",
#        "name"=>"account",
#        "templated"=>true},
#      "self"=>{"href"=>"/account"},
#      "account:update"=>{"href"=>"/account"}},
#    "throttleSettings"=>{"rateLimit"=>10000.0, "burstLimit"=>5000}}