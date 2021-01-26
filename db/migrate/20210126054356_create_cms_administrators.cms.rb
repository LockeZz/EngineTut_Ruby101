# This migration comes from cms (originally 20210126054332)
class CreateCmsAdministrators < ActiveRecord::Migration[6.1]
  def change
    create_table :cms_administrators do |t|
      t.string :name
      t.string :email
      t.string :password_digest

      t.timestamps
    end
    add_index :cms_administrators, :email, unique: true
  end
end
