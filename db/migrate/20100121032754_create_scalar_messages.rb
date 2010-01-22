class CreateScalarMessages < ActiveRecord::Migration
  def self.up
    create_table :scalar_messages do |t|
      t.integer :data
      t.timestamps
    end
  end

  def self.down
    drop_table :scalar_messages
  end
end
