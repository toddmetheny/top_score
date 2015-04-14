require "top_score/version"

module TopScore
	# assumes you have a user model
	# also assumes that in that model you've added a column called points
	# in any model you can add points to the score by simply saving TopScore.update_score(current_user, 10)
  def self.update_score(current_user, points)
  	current_user.score += points
  	current_user.save
  end

  # returns users ordered by score
  def self.leaderboard(users)
  	users.sort{ |x, y| y.score <=> x.score }
  end

  def self.penalty(current_user, points)
  	current_user.score -= points
  	current_user.save
  end
end
