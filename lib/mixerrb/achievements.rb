# Achievement get, get all achievements (warning: unachieveable).
class MixerRB::Achievements
  # Initialize the stats
  # Program does this automatically when running MixerRB.new.
  def initialize; end

  # Get the achievement list.
  def load
    @data = JSON.parse(RestClient.get('https://mixer.com/api/v1/achievements'))
  end

  alias update load

  # Raw Data in JSON form.
  attr_reader :data

  alias to_s data

  # Amount of achievements.
  # @return [Integer] amount of achievements.
  def count
    @data.length.to_i
  end
end
