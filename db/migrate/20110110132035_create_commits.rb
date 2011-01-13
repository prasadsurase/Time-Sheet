class CreateCommits < ActiveRecord::Migration
  def self.up
    create_table :commits do |t|
      t.string :sha
      t.string :comment
      t.references :author
      t.references :repository
      t.time :commited_at
      t.timestamps
    end
  end

  def self.down
    drop_table :commits
  end
end
