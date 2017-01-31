ActiveAdmin.register Exercise do

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
	permit_params :chapter_id, :description, :position, :title, :nivel, questions_attributes:[
																																														:id,
																																														:_destroy, 
																																														:experience, 
																																														:title, 
																																													 	alternatives_attributes:[
																																													 													 :id,
																																													 													 :_destroy,
																																													 													 :title,
																																													 													 :correct
																																													 												  ]
																																													  ]
	index do
    selectable_column
    id_column
    column :chapter
    column :title
    column :position
    column :created_at
    actions
  end

  form do |f|
    inputs 'Novo Exercicio' do
      f.input :chapter
      f.input :description
      f.input :position
      f.input :title
      f.inputs do
      	f.has_many :questions, allow_destroy: true do |q|
      		q.input :id, as: :hidden 
      		q.input :experience
      		q.input :title
      		q.has_many :alternatives, allow_destroy: true do |a|
      			a.input :id, as: :hidden 
      			a.input :title
      			a.input :correct
      		end
      	end
      end
    end
    actions
  end
end
