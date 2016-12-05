ActiveAdmin.register Category do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
	permit_params :title, :image, :description

	index do 
		id_column
		column :title
		column :description
		column :created_at 
		column :picture_file_name
		actions
	end

	permit_params :title, :description, :picture
 	
 	form do |f|
 		inputs "Nova Categoria" do
	 		f.input :title
	 		f.input :description
	 		f.input :picture, as: :file
	 		f.actions
	 	end
 	end

end
