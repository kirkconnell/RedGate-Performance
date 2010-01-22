class CreateStringBigArrayMessages < ActiveRecord::Migration
  def self.up
    create_table :string_big_array_messages do |t|
      (1..100).each { |item| t.string "data_#{item}".to_sym }
      t.timestamps
    end
  end

  def self.down
    drop_table :string_big_array_messages
  end
end
