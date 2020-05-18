class Team

  attr_reader :team_name, :players, :points
  attr_accessor :coach

  def initialize(team_name, players, coach, points)

    @team_name = team_name
    @players = players
    @coach = coach
    @points = points

  end

  def set_new_players(player_name)

    @players.push(player_name)

  end

  def check_player_exists(team, player_name)

    for player in team.players
      if player == player_name
        return true
      end
    end

  end

  def eval_points_for_match(match_result, match_value)

    @points += match_value if match_result == "win"

    #trying to protect against points falling
    #below zero, but maybe unnecessary
    if match_result == "loss" && @points == 0
      return
    elsif match_result == "loss"
      @points -= match_value
    end

  end

end

