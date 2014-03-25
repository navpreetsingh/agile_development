class CreateListToDos < ActiveRecord::Migration
  def change
    create_table :list_to_dos do |t|
      t.string :task

      t.timestamps
    end
  end
end
