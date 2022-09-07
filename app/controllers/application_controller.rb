class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  configure do
  set :views, 'app/views'
  end


  # Add your routes here
#===========================================================================================================================
   options "*" do
    response.headers["Allow"] = "GET, PUT, POST, DELETE, OPTIONS"
    response.headers["Access-Control-Allow-Headers"] = "Authorization, Content-Type, Accept, X-User-Email, X-Auth-Token"
    response.headers["Access-Control-Allow-Origin"] = "*"
    200
  end
#===============================================================================================================================

#   get "/" do
#     erb :welcome
#     # { message: "Good luck with your project!" }.to_json
#   end

# user routes
# get single user
get '/users/:id' do
    single_user = User.find(params[:id])
    single_user.to_json
end
# get all users
get '/users' do
    all_users = User.all
    all_users.to_json
end
# post users
post '/users' do
  single_user = User.create(
    first_name: params[:first_name],
    last_name: params[:last_name],
    username: params[:username],
    password: params[:password]
  )
  single_user.to_json
end
# delete user

delete '/users/:id' do
delete_user = User.find(params[:id])
delete_user.destroy
delete_user.to_json
end
# update user
patch '/users/:id' do
  single_user = User.find_by(id:params[:id])
  single_user.update(first_name: params[:first_name],
    first_name: params[:first_name],
    last_name: params[:last_name],
    username: params[:username],
    password: params[:password])
end
        
# =========================POSTS=======================================

# GET POSTS

# get single post
get '/posts/:id' do
    single_post = Post.find(params[:id])
    single_post.to_json
end
# get all posts
get '/posts' do
    all_posts = User.all
    all_posts.to_json
end

# POST POSTS
post '/posts' do
  single_post = Post.create(
    title: params[:title],
    description: params[:description],
    creator: params[:creator],
    imageurl: params[:imageurl]
    like_count: params[:like_count],
    user_id: params[:user_id],
  )
  single_post.to_json
end

# UPDATE POSTS
patch '/posts/:id' do
  single_post = User.find_by(id:params[:id])
  single_post.update(first_name: params[:first_name],
    last_name: params[:last_name],
    username: params[:username],
    password: params[:password])
end

# DELETE POSTS
delete '/posts/:id' do
delete_post = User.find(params[:id])
delete_post.destroy
delete_post.to_json
end