# Require external gems
require 'json'
require 'rest-client'

# All MixerRB functionality, whether extended or just here.
class MixerRB
  # Initialize a new MixerRB API, via a key.
  # @param apikey [String] API Key, taken from the Mixer site.
  def initialize(apikey)
    @api = apikey
  end

  # Change the API key
  # @param apikey [String] API Key of the bot, taken from the DBL.
  def updateapi(apikey)
    @api = apikey
  end

  alias updateapikey updateapi
  alias api= updateapi
  alias apikey= updateapi

  # Get the API Key from instantiation
  attr_reader :api

  alias apikey api
end
