# Achievement get, get all achievements (warning: unachieveable).
class MixerRB::Achievements
  # Initialize the stats
  # Program does this automatically when running MixerRB.new.
  def initialize
    @data = JSON.parse(RestClient.get('https://mixer.com/api/v1/achievements'))
  end

  # Update the achievement list, you rarely ever need to this, however.
  def update
    @data = JSON.parse(RestClient.get('https://mixer.com/api/v1/achievements'))
  end

  # Raw Data in JSON form.
  attr_reader :data

  # Amount of achievements.
  # @return [Integer] amount of achievements.
  def count
    @data.length.to_i
  end
end
