class AddImgTeamTeamimg < ActiveRecord::Migration[5.2]
  def change
  	add_column :players, :img, :string
  	add_column :players, :team, :string
  	add_column :players, :team_img, :string
  end
end
