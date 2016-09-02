# require 'rails'
# module MyGem

#   class << self
#     attr_accessor :configuration
#   end

#   def self.configure
#     self.configuration ||= Configuration.new
#      block_given? ? yield(configuration) : configuration
#   end

#   class Configuration
#     attr_accessor :site_token
#   end


#   class MyRailtie < Rails::Railtie
#     initializer "my_initialization" do |app|
#       puts 'initializing....................'
#       ActionController::Base.send(:include, Injector::Filter)
#     end

#     class Injector

#       def initialize site_token
#         @site_token = site_token
#       end

#       module Filter
#         extend ActiveSupport::Concern
#         included do
#           append_after_filter :add_script

#           CLOSING_HEAD_TAG = %r{</head>}

#           def add_script
#             puts "#{response.body}"
#             response.body = response.body.gsub(CLOSING_HEAD_TAG, "<script>!function(g,s,q,r,d){r=g[r]=g[r]||function(){(r.q=r.q||[]).push(
#               arguments)};d=s.createElement(q);q=s.getElementsByTagName(q)[0];
#             d.src='//d1l6p2sc9645hc.cloudfront.net/tracker.js';q.parentNode.
#             insertBefore(d,q)}(window,document,'script','_gs');
#             _gs('#{MyGem.configure.site_token}'); _gs('set', 'trackLocal', true); </script>" + "\n </head>")
#           end

#         end
#       end

#     end

#   end
# end
