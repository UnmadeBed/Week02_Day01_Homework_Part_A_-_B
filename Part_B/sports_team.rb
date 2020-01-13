class SportsTeam
  attr_accessor :team_name, :team_players, :team_coach

  def initialize(team_name, team_players, team_coach)
    @team_name = team_name
    @team_players = team_players
    @team_coach = team_coach
    @team_points = 0
  end

  #GETTERS

  def team_name()
    return @team_name
  end

  def team_players()
    return @team_players
  end

  def team_coach()
    return @team_coach
  end

  #SETTERS

  def set_team_coach(new_team_coach)
    @team_coach = new_team_coach
  end

  # ADD NEW PLAYER TO PLAYER ARAY

  def add_player_to_team(new_player)
    new_player = @team_players.push
  end

  # PLAYER NAME CHECK

  def player_check(player_name)
    if player_name == @sports_team.include?(player_name)
      return true
    end
  end

  # POINTS TALLY

  def points_tally(outcome)
    @team_points = 0
    if outcome = 'win'
      @team_points += 1
    else @team_points = 0
    end
  end


end
