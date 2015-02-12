#dungeon, i think there will be a cellar to an attic
#player concept, link between dungeon and you
  #player can move between rooms in dungeon
  #so there are rooms in dungeon
  #rooms have doors that are linked directionally(n,s,e,w)
  #items, enemies, characters, spells, triggers,

class Dungeon
  attr_accessor :player, :rooms
  def initialize(player_name)
    @player = Player.new(player_name)
    @rooms = []
  end

  def add_room(reference, name, description, connections)
    @rooms << Room.new(reference, name, description, connections)
  end

  def start(location)
    @player.location = location
    show_current_description
  end

  def show_current_description
    puts find_room_in_dungeon(@player.location).full_description
  end

  def find_room_in_dungeon(reference)
    @rooms.detect { |room| room.reference == reference}
  end

  def find_room_in_direction(direction)
    find_room_in_dungeon(@player.location).connections[direction]
  end

  #i feel like rooms should be stored in the person class aka the rooms always exist, but are only known when a player enters one

  def go(direction)
    puts "You go " + direction.to_s
    @player.location = find_room_in_direction(direction)
    show_current_description
  end

  #Player = Struct.new(:name, :location)
  class Player

    attr_accessor :name, :location

    def initialize(name)
      @name = name
    end
  end #ends player class

  #Room = Struct.new(:reference, :name, :description, :connections)

  class Room
    attr_accessor :reference, :name, :description, :connections
    def initialize(reference, name, description, connections)
      @reference = reference
      @name = name
      @description = description
      @connections = connections
    end

    def full_description
      @name + "\n\nYou are in " + @description
    end
  end #ends room class

end #ends dungeon class

#are structs as persistent as classes? not sure if classes are any more persistent...

new_game = Dungeon.new("Alex")

p "Your name is: #{new_game.player.name}"
new_game.add_room(:largecave, "Large Cave", "a large cavernous cave", {:west => :smallcave})
new_game.add_room(:smallcave, "Small Cave", "a small claustrophobic cave", {:east => :largecave})
new_game.start(:largecave)
