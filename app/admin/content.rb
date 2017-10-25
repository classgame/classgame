# frozen_string_literal: true
ActiveAdmin.register Content do
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

  permit_params :description, :experience, :position, :title, :link, :text, :chapter_id

  index do
    id_column
    column :description
    column :experience
    column :position
    column :title
    actions
  end
end
