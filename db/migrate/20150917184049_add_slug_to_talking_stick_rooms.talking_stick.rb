# This migration comes from talking_stick (originally 20150722200822)
class AddSlugToTalkingStickRooms < ActiveRecord::Migration
  def change
    add_column :talking_stick_rooms, :slug, :string
  end
end
