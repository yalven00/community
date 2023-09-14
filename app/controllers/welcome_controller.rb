class WelcomeController < ApplicationController

layout 'application'

before_filter :login_required
skip_before_filter :get_user

def index
@posts = Post.recent
@photos = Photo.recent
@user =
end


def directory
@alphabet = ('A'..'Z').to_a
@user = User.find(:first, :order => :random)
@character = params[:char]
@users = User.find(:all, :order => "last_name ASC",
:conditions => ["last_name like ?", params[:char] + "%"])
end


end
