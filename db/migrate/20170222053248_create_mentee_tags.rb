class CreateMenteeTags < ActiveRecord::Migration[5.0]
  def change
    create_table :mentee_tags do |t|
      t.integer :mentee_id
      t.integer :tag_id

      t.timestamps
    end
  end
end
