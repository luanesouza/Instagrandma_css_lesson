class CreateGrandmas < ActiveRecord::Migration[5.2]
  def change
    create_table :grandmas do |t|
      t.string :name
      t.string :username
      t.string :password

      t.timestamps
    end
  end
end
