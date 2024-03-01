ActiveAdmin.register Post do
  
  permit_params :title, :description, :image, :type

  index do
    selectable_column
    id_column
    column :title
    column :description
    column :type
    column :image
    column :created_at
    actions
  end

  filter :title
  filter :description
  filter :image
  filter :created_at

  form do |f|
    f.inputs do
      f.input :title
      f.input :description
      f.input :type, :as => :select, :collection =>  post.type
      f.input :image, as: :file
    end
    f.actions
  end

  show do 
    attributes_table do 
      row :title
      row :description
      row :type
      row :image do |post|
        if post.image.attached?
          image_tag rails_blob_url(post.image), size: "100*100"
        end
      end
    end
  end
end
