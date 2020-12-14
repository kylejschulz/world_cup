require 'minitest/autorun'
require 'minitest/pride'
require './lib/team'
require './lib/player'

class TeamTest < Minitest::Test
  def setup
    @team = Team.new("France")     # => #<Team:0x00007fe0d0335d48...>
  end
  def test_it_exists
    assert_instance_of Team, @team
  end

  def test_it_has_attributes
    assert_equal "France", @team.country
  end

  def test_it_can_have_different_attributes
    assert_equal false, @team.eliminated?

    @team.eliminated = true

    assert_equal true, @team.eliminated?
    assert_equal [], @team.players

    pogba = Player.new({name: "Paul Pogba", position: "midfielder"})
    mbappe = Player.new({name: "Kylian Mbappe", position: "forward"})
    @team.add_player(mbappe)
    @team.add_player(pogba)

    assert_equal [mbappe, pogba], @team.players
  end

  def test_it_can_sort_by_position
    assert_equal [], @team.players

    pogba = Player.new({name: "Paul Pogba", position: "midfielder"})
    mbappe = Player.new({name: "Kylian Mbappe", position: "forward"})
    @team.add_player(mbappe)
    @team.add_player(pogba)

    assert_equal [pogba], @team.players_by_position("midfielder")
    assert_equal [], @team.players_by_position("defender")
  end
end
