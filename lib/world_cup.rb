class WorldCup
attr_reader :year, :teams
  def initialize(year, teams)
    @year = year
    @teams = teams
  end

  def active_players_by_position(position)
    active_players = []
    @teams.each do |team|
      active_players << team.players_by_position(position) if team.eliminated? == false
    end
    active_players = active_players.flatten
  end

  def all_players
    all_players = []
    @teams.each do |team|
      all_players << team.players
    end
    all_players = all_players.flatten
  end


  def all_players_by_position
    all_player_hash = Hash.new { |h, k| h[k] = [] }
    all_players.each do |player|
      all_player_hash[player.position].push(player)
    end
    all_player_hash
  end
end
