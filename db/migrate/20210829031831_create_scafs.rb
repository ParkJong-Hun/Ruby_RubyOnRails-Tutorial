class CreateScafs < ActiveRecord::Migration[6.1]
  def change
    create_table :scafs do |t|
      t.String :title
      t.String :content

      t.timestamps
    end
  end
end
