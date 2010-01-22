class CreateBigStringMessages < ActiveRecord::Migration
  def self.up
    create_table :big_string_messages do |t|
      t.text :data
      t.timestamps
    end
  end

  def self.down
    drop_table :big_string_messages
  end
end
