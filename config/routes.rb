Rails.application.routes.draw do

get("/flexible/square/:number", {:controller => "calculations", :action => "flexible_square_5"})
get("/flexible/square_root/:number", {:controller => "calculations", :action => "square_root"})
get("/flexible/square_root/:number", {:controller => "calculations", :action => "flexible_payment"})
get("/square/new/", {:controller => "calculations", :action => "square_form"})
get("/square/results/", {:controller => "calculations", :action => "square"})


end
