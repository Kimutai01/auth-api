class AddJtiToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users , :jti, :string, null: false
  end
end
