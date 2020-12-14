class Team
  attr_reader :country, :players
  attr_accessor :eliminated
  def initialize(country)
    @country = country
    @eliminated = false
    @players = []
  end

  def country
    @country
  end

  def eliminated?
    @eliminated
  end

  def add_player(player)
    @players << player
  end

  def players_by_position(category)
    sorted = []
    @players.find_all do |player|
      sorted << player if player.position == category
    end
    sorted
  end
end
