# require 'rails'
# module MyGem

#   class << self
#     attr_accessor :configuration
#   end

#   def self.configure
#     self.configuration ||= Configuration.new
#     block_given? ? yield(configuration) : configuration
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

#           CLOSING_HEAD_TAG = %r{</body>}

#           def add_script
#             response.body = response.body.gsub(CLOSING_HEAD_TAG, "<script type='text/javascript' async='true'>
#               var trackingCode = function(){
#                 !function(g,s,q,r,d){r=g[r]=g[r]||function(){(r.q=r.q||[]).push(
#                   arguments)};d=s.createElement(q);q=s.getElementsByTagName(q)[0];
#             d.src='//d1l6p2sc9645hc.cloudfront.net/tracker.js';q.parentNode.
#             insertBefore(d,q)}(window,document,'script','_gs');
#             _gs('GSN-589158-M'); _gs('set', 'trackLocal', true);
#             };

#             var loadTracker;
#             loadTracker=function(){
#               if(!window._gs) {
#                 trackingCode();
#                 } else {
#                   delete _gs;
#                   trackingCode();
#                 }
#                 };
#                 $(document).on('page:load', loadTracker)
#                 $(document).on('turbolinks:load', loadTracker);
#                 </script>" + "\n </body>")
#           end

#         end
#       end

#     end

#   end
# end
