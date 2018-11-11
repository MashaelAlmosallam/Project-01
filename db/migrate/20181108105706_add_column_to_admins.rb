class AddColumnToAdmins < ActiveRecord::Migration[5.2]
  def change
    add_column :admins, :description, :text
    add_column :admins, :dob, :date
  end
end
