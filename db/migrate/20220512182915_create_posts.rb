class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :location
      t.string :excerpt
      t.text :body
      t.datetime :published_at

      t.timestamps
    end
  end
end
