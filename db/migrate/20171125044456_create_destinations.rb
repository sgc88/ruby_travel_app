class CreateDestinations < ActiveRecord::Migration[5.1]
  def change
    create_table :destinations do |t|
      t.string :city
      t.string :date
      t.string :budget
      t.string :organizer
      t.string :plans

      t.timestamps
    end
  end
end
