class ProfileController < ApplicationController
layout 'application'
before_filter :login_required

def index
@posts = @user.posts.recent
end

def show
end

def edit
@detail = @user.detail
@avatar = @user.avatar
end

def update
@detail = current_user.detail
@detail.update_attributes(params[:detail])
redirect_to showprofile_path(:user => @user.login)
end

end