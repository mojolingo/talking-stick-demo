# This migration comes from talking_stick (originally 20150722200822)
class AddSlugToTalkingStickRooms < ActiveRecord::Migration
  def up
    add_column :talking_stick_rooms, :slug, :string
    # Add slugs to the existing rooms
    TalkingStick::Room.all.map &:save
  end

  def down
    remove_column :talking_stick_rooms, :slug
  end
end
