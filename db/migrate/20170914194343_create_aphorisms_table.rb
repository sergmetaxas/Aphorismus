class CreateAphorismsTable < ActiveRecord::Migration[5.1]
  def change
    create_table :aphorisms do |t|
      t.text :text
      t.integer :author_id
    end
  end
end
