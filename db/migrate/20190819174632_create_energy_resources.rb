class CreateEnergyResources < ActiveRecord::Migration[5.2]
  def change
    create_table :energy_resources do |t|
      t.string :name

      t.timestamps
    end
  end
end
