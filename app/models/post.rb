class Post < ActiveRecord::Base
belongs_to :user
acts_as_commentable
before_filter :login_required

def self.recent
find(:all, :order => 'Posts.created_at desc', :group => 'user_id',
:limit => 7, :include => :user)
end

end
