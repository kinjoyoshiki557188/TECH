class CreateAnswers < ActiveRecord::Migration[6.0]
  def change
    create_table :answers do |t|
      t.integer :post_id
      t.text :content
      t.string :name
      t.timestamps
    end
  end
end
