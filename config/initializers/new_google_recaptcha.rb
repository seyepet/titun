if Object.const_defined?('NewGoogleRecaptcha')
  NewGoogleRecaptcha.setup do |config|
    config.site_key   = "6Ld8oMYUAAAAAJ2yD5L9ODOsdvciznTmOCggfqU4"
    config.secret_key = "6Ld8oMYUAAAAAB75q9J064BvZcI7OqYU0dAcGL7r"
    config.minimum_score = 0.5
  end
end
