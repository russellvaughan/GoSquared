# class InitializerGenerator < Rails::Generators::NamedBase
#   source_root File.expand_path("../templates", __FILE__)

#   argument :site_token

#   def copy_initializer_file
#     @site_token = site_token
#     template("mygem.rb.erb", "config/initializers/my_gem.rb")
#   end
# end
