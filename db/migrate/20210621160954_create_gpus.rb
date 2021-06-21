class CreateGpus < ActiveRecord::Migration[6.1]
  def change
    create_table :gpus do |t|

      t.timestamps
    end
  end
end
