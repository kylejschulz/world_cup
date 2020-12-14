require 'minitest/autorun'
require 'minitest/pride'
require './lib/player'

class PlayerTest < Minitest::Test
  # def setup
  #   #@player_1 = Player.new({name: "Luka Modric", position: "midfielder"})
  # end


  def test_it_exists
    player_1 = Player.new({name: "Luka Modric", position: "midfielder"})
    assert_instance_of Player, player_1
  end

  def test_it_has_attributes
    player_1 = Player.new({name: "Luka Modric", position: "midfielder"})

    assert_equal "Luka Modric", player_1.name
    assert_equal "midfielder", player_1.position
  end

  def test_it_can_have_different_attributes
    mbappe = Player.new({name: "Kylian Mbappe", position: "forward"})

    assert_equal "Kylian Mbappe", mbappe.name
    assert_equal "forward", mbappe.position

  end
end
