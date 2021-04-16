class CreateParticipations < ActiveRecord::Migration[6.0]
  def change
    create_table :participations do |t|
      t.string :first_name
      t.string :last_name
      t.integer :participation

      t.timestamps
    end
  end
end
