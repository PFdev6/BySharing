ActiveAdmin.register User do
  permit_params :email, :first_name, :password, :password_confirmation,
                rents_attributes: [:id, :title, :_destroy, :current_price,
                                   :start_date, :end_date, :finished_tenant, 
                                   :finished_owner, :user_id, :bike_id],
                bicycles_attributes: [:id, :title, :name, :price, :bike_type]

  index do
    selectable_column
    id_column
    column :email
    column :current_sign_in_at
    column :sign_in_count
    column :created_at
    actions
  end

  filter :email
  filter :current_sign_in_at
  filter :sign_in_count
  filter :created_at

  form do |f|
    f.inputs do
      f.input :email
      f.input :first_name
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end
end
