ActiveAdmin.register Text do

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
	permit_params :chapter_id, :description, :experience, :position, :title, :link, :text

	form do |f|
		f.inputs "Novo Video" do
			f.input :description
			f.input :experience
			f.input :position
			f.input :title
			f.input :text, as: :html_editor
			f.input :chapter
			actions
		end
	end

end
