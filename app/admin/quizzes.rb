ActiveAdmin.register Quiz do
  index do
    selectable_column
    id_column
    column :name
    column :updated_at
    default_actions
  end
end
