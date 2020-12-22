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

end
