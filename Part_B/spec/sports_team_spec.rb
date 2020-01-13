require('minitest/autorun')
require('minitest/reporters')
require_relative('../sports_team')
Minitest::Reporters.use!
Minitest::Reporters::SpecReporter.new

class TestSportsTeam < MiniTest::Test

  def setup
    @sports_team = SportsTeam.new('All-stars', ['John', 'Peter', 'Jack', 'Bob', 'Rick'], 'Allan')
  end

  def test_team_name
    assert_equal('All-stars', @sports_team.team_name)
  end

  def test_team_players
    assert_equal(['John', 'Peter', 'Jack', 'Bob', 'Rick'], @sports_team.team_players)
  end

  def test_team_coach
    assert_equal('Allan', @sports_team.team_coach)
  end

  # TEST SETTERS

  def test_set_team_coach
    @sports_team.team_coach = 'Bill'
    assert_equal('Bill', @sports_team.team_coach)
  end

  # TEST ADD NEW PLAYER TO PLAYER ARRAY

  def test_add_player_to_team
    @sports_team.team_players = 'Barry'
    assert_equal('Barry', @sports_team.team_players)
  end

  # TEST PLAYER NAME CHECK

  def test_player_check
    @sports_team.team_players = 'Rick'
    assert_equal('Rick', @sports_team.team_players)
  end

  # TEST POINTS TALLY



end
