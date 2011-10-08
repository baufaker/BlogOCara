class CreateComentarios < ActiveRecord::Migration
  def change
    create_table :comentarios do |t|
      t.text :content
      t.string :author
      t.integer :post_id

      t.timestamps
    end
  end
end
