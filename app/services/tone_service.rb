require "ibm_watson/authenticators"
require "ibm_watson/tone_analyzer_v3"

class ToneService
  include IBMWatson
  def self.fetch_tones(lines)
    authenticator = Authenticators::IamAuthenticator.new(
      apikey: ENV['TONE_API_KEY']
    )

    tone_analyzer = ToneAnalyzerV3.new(
      version: "2017-09-21",
      authenticator: authenticator
    )
    tone_analyzer.service_url = ENV['TONE_SERVICE_URL']

    text = lines

    tone = tone_analyzer.tone(
      tone_input: {text: text},
      content_type: "application/json"
    )

    tone.result
  end
end
