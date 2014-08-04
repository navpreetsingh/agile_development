class CreateGammis < ActiveRecord::Migration
  def change
    create_table :gammis do |t|
      t.string :name

      t.timestamps
    end
  end
end
