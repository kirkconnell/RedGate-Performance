class CreateScalarArrayMessages < ActiveRecord::Migration
  def self.up
    create_table :scalar_array_messages do |t|
      (1..10).each { |item| t.integer "data_#{item}".to_sym }
      t.timestamps
    end
  end

  def self.down
    drop_table :scalar_array_messages
  end
end
