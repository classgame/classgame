class AddContentTypeRefToContent < ActiveRecord::Migration
  def change
    add_reference :contents, :content_type, index: true
  end
end
