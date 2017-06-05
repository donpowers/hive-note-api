class CreateNotes < ActiveRecord::Migration[5.0]
  def change
    create_table :notes do |t|
      t.string :hive_name
      t.date :observation_date
      t.string :note
      t.string :task
      t.date :task_due_date
      t.string :task_status
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
