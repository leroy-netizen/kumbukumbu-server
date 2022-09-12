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
# get all users
get '/users' do
    all_users = User.all
    all_users.to_json
end
# get single user
get '/users/:id' do
    single_user = User.find(params[:id])                                                                                                                  
    single_user.to_json
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
  single_user = User.find_by(id: params[:id])
  single_user.update(first_name: params[:first_name],
    last_name: params[:last_name],
    username: params[:username],
    password: params[:password])
end
        
# =========================POSTS=======================================

# GET POSTS

# get single post
get '/posts/:id' do
    single_post = Posts.find(params[:id])
    single_post.to_json
end
# get all posts
get '/posts' do
    all_posts = Posts.all
    all_posts.to_json
end

# POST POSTS
post '/posts' do
  single_post = Posts.create(
    title: params[:title],
    description: params[:description],
    creator: params[:creator],
    imageurl: params[:imageurl],
    like_count: params[:like_count],
    user_id: params[:user_id],
  )
  single_post.to_json
end

# UPDATE POSTS
patch '/posts/:id' do
  single_post = Posts.find_by(id:params[:id])
  single_post.update(first_name: params[:first_name],
    last_name: params[:last_name],
    username: params[:username],
    password: params[:password])
end

# DELETE POSTS
delete '/posts/:id' do
delete_post = Posts.find(params[:id])
delete_post.destroy
delete_post.to_json
end

# =============================================================COMMENTS============================

# GET COMMENTS
# get single comment
get '/comments/:id' do
    single_comment = User.find(params[:id])
    single_comment.to_json
end
# get all comments
get '/comments' do
    all_comments = Comments.all
    all_comments.to_json
end

# POST COMMENTS
post '/comments' do
  single_comment = Comments.create(
    post_id: params[:post_id],
    user_id: params[:description],
  )
  single_post.to_json
end
# UPDATE COMMENTS
patch '/comments' do
  single_post = Comments.find_by(id:params[:id])
  single_post.update(post_id: params[:post_id],
    user_id: params[:user_id],
    )
end

# DELETE COMMENTS
delete '/comments/:id' do
delete_comment = Comments.find(params[:id])
delete_comment.destroy
delete_comment.to_json
end
end