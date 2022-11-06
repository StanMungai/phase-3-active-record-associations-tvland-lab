class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    # list all the characters
    self.characters.map do |character| 
      "#{character.name} - #{character.show.name}"
    end
    # list all shows
    # self.shows
  end
end