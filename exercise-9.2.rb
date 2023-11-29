class Poker < Game
  def initialize_players(players)
    @hands = []
    players.length().times { |x| @hands.append(nil) }
  end

  def play()
    puts "Players in the poker game:"
    @player_list.length().times { |i| puts "#{self.get_player_name(i)}: #{self.get_player_hand(i)}" }
  end

  def get_results()
    return "[pretend these are poker results]"
  end

  def get_player_name(i)
    return @player_list[i]
  end

  def get_player_hand(i)
    return @hands[i]
  end
end

class Chess < Game
  def play()
    puts "Players in the chess game:"
    @player_list.each { |name, color| puts "#{name}: #{color}"}
    # [pretend there's code here]
  end

  def get_results()
    return "[pretend these are chess results]"
  end

  def get_player_name(i)
    @player_list[i][0]
  end
end

class GoPlayer
  attr_reader :name, :color

  def initialize(name:, color:)
    @name = name
    @color = color
  end
end

class Go < Game
  def initialize_players(players)
    create_players(players)
  end
  
  def create_players(players)
    players.each { |name, color| @player_list.append(create_go_player(name, color)) }
  end
  
  def create_go_player(name, color)
    GoPlayer.new(name: name, color: color)
  end
  
  def play()
    puts "Players in the go game:"
    @player_list.each { |player| puts "#{player.name}: #{player.color}" }
    # [pretend there's code here]
  end

  def get_results()
    return "[pretend these are go results]"
  end
end

class Game

  def initialize(player_list:)
    @player_list = player_list
    initialize_players(player_list)
  end
  
  def initialize_players(players)
  
  end
  
  def play()
    
  end
  
  def get_results()
  
  end
  
end

pg = PlayPoker.new(player_list: ["alice", "bob", "chris", "dave"])
pg.play()

puts

pg = PlayChess.new(player_list: [["alice", "white"], ["bob", "black"]])
pg.play()

puts

pg = PlayGo.new(player_list: [["alice", "white"], ["bob", "black"]])
pg.play()

