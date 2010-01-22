class CreateBigStringBigArrayMessages < ActiveRecord::Migration
  def self.up
    create_table :big_string_big_array_messages do |t|
      (1..100).each { |item| t.text "data_#{item}".to_sym }
      t.timestamps
    end
  end

  def self.down
    drop_table :big_string_big_array_messages
  end
end
