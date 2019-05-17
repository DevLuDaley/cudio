class CreateZats < ActiveRecord::Migration[5.2]
  def change
    create_table :zats do |t|
      t.datetime :appointment_date
      t.boolean :status, default: false
      t.belongs_to :studio, index: true
      t.belongs_to :engineer, index: true
      t.belongs_to :artist, index: true
      t.timestamps
    end
  end
end
