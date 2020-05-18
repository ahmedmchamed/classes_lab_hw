require ('minitest/autorun')
require ('minitest/reporters')
require_relative ('../sports_team')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestTeam < MiniTest::Test

  def setup

    @team = Team.new("The Crumpets", ["Jam", "Nutella", "Honey"], "Crumpet Sr.", 0)

  end

  def test_can_get_team_name
    assert_equal("The Crumpets", @team.team_name)
  end

  def test_can_get_players
    assert_equal(["Jam", "Nutella", "Honey"], @team.players)
  end

  def test_can_get_coach
    assert_equal("Crumpet Sr.", @team.coach)
  end

  def test_can_set_coach
    @team.coach = "Crumpet Jr."
    assert_equal("Crumpet Jr.", @team.coach)
  end

  def test_can_add_new_players
    @team.set_new_players("Marmite")
    assert_equal("Marmite", @team.players[3])
  end

  def test_check_player_exists
    check_result = @team.check_player_exists(@team, "Honey")
    assert_equal(true, check_result)
  end

  def test_team_won_points
    @team.eval_points_for_match("win", 1)
    assert_equal(1, @team.points)
  end

end
