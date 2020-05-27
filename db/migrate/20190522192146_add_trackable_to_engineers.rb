class AddTrackableToEngineers < ActiveRecord::Migration[5.2]
  def change
    add_column :engineers, :sign_in_count, :integer, default: 0, null: false
    add_column :engineers, :current_sign_in_at, :datetime
    add_column :engineers, :last_sign_in_at, :datetime
    add_column :engineers, :current_sign_in_ip, :string
    add_column :engineers, :last_sign_in_ip, :string


#copied from the engineers file.

  end
end
