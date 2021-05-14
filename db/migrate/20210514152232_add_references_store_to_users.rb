class AddReferencesStoreToUsers < ActiveRecord::Migration[6.1]
  def change
    add_reference :users, :store, null: false, foreign_key: true
  end
end
