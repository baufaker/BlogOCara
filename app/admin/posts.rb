ActiveAdmin.register Post do
  index do 
    column :title
    column :content do |post|
      simple_format post.content
    end
    column :admin_user_id
    column :updated_at
    default_actions
  end
  
  show do
    h3 post.title
    div do
      simple_format post.content
    end
  end
  
  form do |f|
    f.inputs "Posts" do
            f.input :title
            f.input :content
          end
    f.buttons
  end

end
