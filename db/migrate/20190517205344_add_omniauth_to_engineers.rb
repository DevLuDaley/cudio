class AddOmniauthToEngineers < ActiveRecord::Migration[5.2]
  def change
    add_column :engineers, :provider, :string
    add_column :engineers, :uid, :string
  end
end
