class CreateStringMessages < ActiveRecord::Migration
  def self.up
    create_table :string_messages do |t|
      t.string :data
      t.timestamps
    end
  end

  def self.down
    drop_table :string_messages
  end
end
