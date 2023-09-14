class GalleriesController < ApplicationController

def index
@galleries = @user.galleries.find(:all)
end

def new
@gallery = current_user.galleries.build
end


def create
@gallery = current_user.galleries.build(params[:gallery])
if @gallery.save
redirect_to gallery_url(:user => current_user.login, :id => @gallery)
else
render :action => "new"
end
end

def show
@gallery = @user.galleries.find(params[:id])
end


end
