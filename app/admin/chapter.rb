ActiveAdmin.register Chapter do

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
    permit_params :course_id, :title, :description
	
	index do
    selectable_column
    id_column
    column :title
    column :content, as: :test do |chapter|
    	chapter.contents.map{ |content| content.title }
    end
    column :created_at
    actions
  end

end
