class AddAddressableToAddress < ActiveRecord::Migration[5.0]
  def change
    add_column :addresses, :addressable_type, :string
    add_column :addresses, :addressable_id, :integer
  end
end
