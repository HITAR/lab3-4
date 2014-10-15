class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.integer :studentid
      t.string :studentname
      t.string :nickname
      t.integer :projectscore
      t.integer :finalscore
      t.integer :labscore
      t.integer :classscore

      t.timestamps
    end
  end
end
