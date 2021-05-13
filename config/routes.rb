Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/manage', as: 'rails_admin'
	# Add a root route if you don't have one...
	# We can use users#new for now, or replace this with the controller and action you want to be the site root:
	root to: 'pages#home'
  # root to: 'pages#test'
	# root to: 'pages#secret'
  
	# sign up page with form:
	get 'users/new' => 'users#new', as: :new_user
  
	# create (post) action for when sign up form is submitted:
	post 'users' => 'users#create'
  
	# log in page with form:
	get '/login' => 'sessions#login'
  
	# create (post) action for when log in form is submitted:
	post '/login' => 'sessions#create'
  
	# delete action to log out:
	delete '/logout' => 'sessions#destroy'
	
	# OPTIONAL secret page (requires a user to be signed in):
	get 'pages/secret' => 'pages#home'

	get '/view/:slug_project' => 'view_post#home_post_project'

	get '/admin/create' =>'admin#main'
	get '/admin' =>'admin#admin_layout', as: :main_admin
	post '/admin/create' => 'admin#create'

	get '/project/remove/:id' => 'admin#deletep'
	get '/news/remove/:id' => 'admin#deleten'
	get '/project/edit/:id_project' => 'admin#edit_project'
	post '/project/edit/:id_project' => 'admin#apply_edit_project'
	get '/tin-tuc' => 'view_post#listtintuc'
	get '/tin-tuc/:slug_project' => 'view_post#show_news'
	# http://127.0.0.1:3000/project/edit/52
	get '/news/manage' => 'admin#list_news', as: :news_admin
	get '/news/create' => 'admin#add_news'
	post '/news/create' => 'admin#create_news'
	get '/news/edit/:id_project' => 'admin#edit_news'
	post '/news/edit/:id_project' => 'admin#apply_edit_news'

	get '/dich-vu' => 'view_post#list_service'
	get '/dich-vu/:slug_project' => 'view_post#show_service'
	get '/service/manage' => 'admin#list_service', as: :service_admin
	get '/service/create' => 'admin#add_service'
	post '/service/create' => 'admin#create_service'
	get '/service/remove/:id' => 'admin#deletes'
	get '/service/edit/:id_project' => 'admin#edit_service'
	post '/service/edit/:id_project' => 'admin#apply_edit_service'
  
  end