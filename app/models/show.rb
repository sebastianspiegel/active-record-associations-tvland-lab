class Show < ActiveRecord::Base
    has_many :characters
    has_many :actors, through: :characters
    belongs_to :network 

    def actors_list
        # self.characters.collect {|character| "#{character.name} - #{character.show.name}"}
        self.actors.collect {|actor| actor.full_name}
    end
  
end