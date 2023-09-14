# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper

def show_avatar
if @user.avatar
return @user.avatar.public_filename
else
return "no_avatar.gif"
end
end


def show_admin_menu
current_user == @user
end

end


