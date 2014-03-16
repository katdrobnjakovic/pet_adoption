class CreateRolesUsersTable < ActiveRecord::Migration
  def change
    create_table :roles_users_tables do |t|
    end
  end
  
  def self.down
drop_table :roles_users
end

end
