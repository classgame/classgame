module ApplicationHelper

  def modal_errors(object)
    unless object.nil?
      if object.errors.any?
        content_for :errors do
          render 'layouts/errors/errors', object: object
        end
      end
    end
  end

  def include_page_scripts
    javascript_include_tag("pages/#{controller_name}") if page_asset_exists?
  end 

  private 

  def page_asset_exists?
    coffee_filename = "app/assets/javascripts/pages/#{controller_name}.coffee"

    coffee_file = Rails.root.join(coffee_filename) 
    coffee_erb_file = Rails.root.join(coffee_filename + ".erb")

    coffee_file.exist? || coffee_erb_file.exist?
  end
end
