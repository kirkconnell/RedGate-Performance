class CreateScalarBigArrayMessages < ActiveRecord::Migration
  def self.up
    create_table :scalar_big_array_messages do |t|
      (1..100).each { |item| t.integer "data_#{item}".to_sym }
      t.timestamps
    end
  end

  def self.down
    drop_table :scalar_big_array_messages
  end
end
