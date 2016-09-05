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

end
