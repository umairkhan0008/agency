ActiveAdmin.register Post do
  
  permit_params :title, :description, images:[]

  index do
    selectable_column
    id_column
    column :title
    column :description
    column :images
    column :created_at
    actions
  end

  filter :title
  filter :description
  filter :images
  filter :created_at

  form do |f|
    f.inputs do
      f.input :title
      f.input :description
      f.input :images, as: :file, input_html: {multiple: true}
    end
    f.actions
  end

  show do 
    attributes_table do 
      row :title
      row :description
      row :images do 
        div do 
          post.images.each do |post|
            div do 
              image_tag url_for(post), size: "200*200"
            end
          end
        end
      end
    end
  end

end
