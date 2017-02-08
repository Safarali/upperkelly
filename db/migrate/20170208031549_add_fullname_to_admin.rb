class AddFullnameToAdmin < ActiveRecord::Migration[5.0]
  def change
    add_column :admins, :fullname, :string
  end
end
