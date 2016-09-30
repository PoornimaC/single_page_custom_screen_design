class CreateWebpageStyles < ActiveRecord::Migration
  def change
    create_table :webpage_styles do |t|
      t.string :title, :null => false
      t.string :bg_color, :null => false
      t.string :font_style, :null => false

      t.timestamps null: false
    end
  end
end
