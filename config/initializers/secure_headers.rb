#::SecureHeaders::Configuration.configure do |config|
#  config.hsts = { :max_age => 99, :include_subdomains => true}
#  config.x_frame_options = 'DENY'
#  config.x_content_type_options = "nosniff"
#  config.x_xss_protection = {:value => 1, :mode => false}
#  config.csp = {
#    :default_src => "https://* inline eval",
#    :report_uri => '//chicagoruby.com/uri-directive',
#    :img_src => "https://chicagoruby.com/* data:",
#    :frame_src => "https://* http://*.twimg.com"
#  }
#end
puts "hi"
# ensure_security_headers
