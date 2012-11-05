class CreateCats < ActiveRecord::Migration
  def change
    create_table :cats do |t|
      t.references :person

      t.timestamps
    end
    add_index :cats, :person_id
  end
end
