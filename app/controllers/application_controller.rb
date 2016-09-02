class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
#   after_filter :send_body

#   CLOSING_HEAD_TAG = %r{</head>}

   def logged_in?
       current_user != nil
     end


# def send_body
#   puts "#{response.body}"
#   response.body = response.body.gsub(CLOSING_HEAD_TAG, "<script>alert('Hello James')</script> </head>")
# end

end
