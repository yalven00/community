class PostsController < ApplicationController
  before_filter :login_required


  def new
    @post = current_user.posts.build
  end

  
    def show
    @post = @user.posts.find(params[:id])
    end

  def edit
    @post = current_user.posts.find(params[:id])
  end

  def create
    @post = current_user.posts.build(params[:post])
    if @post.save
      redirect_to showuser_path(:user => @user.login)
    else
      render :action => "new"
    end
  end

  def update
    @post = current_user.posts.find(params[:id])
    if @post.update_attributes(params[:post])
      redirect_to showuser_path(:user => @user.login)
    else
      render :action => "edit"
    end
  end

  def destroy
    @post = current_user.posts.find(params[:id])
    @post.destroy
    redirect_to showuser_url(:user => @user.login)
  end
  
  def addcomment
    post = current_user.posts.find(params[:id])
    comment = Comment.new(params[:comment])
    post.add_comment comment
    redirect_to post_path(:user => params[:user], :id => post)
  end
end
