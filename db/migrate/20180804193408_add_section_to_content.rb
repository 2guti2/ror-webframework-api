class AddSectionToContent < ActiveRecord::Migration[5.0]
  def change
    add_reference :contents, :section, foreign_key: true
  end
end
