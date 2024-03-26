ActiveAdmin.register Enquiry do
  permit_params :name, :subject, :email, :description

  index do
    selectable_column
    id_column
    column :name
    column :subject
    column :email
    column :description
    column :created_at
    actions
  end
end
