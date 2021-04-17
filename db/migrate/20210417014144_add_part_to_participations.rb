class AddPartToParticipations < ActiveRecord::Migration[6.0]
  def change
    add_column :participations, :part, :string
  end
end
