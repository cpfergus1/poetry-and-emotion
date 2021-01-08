class ToneFacade
  def self.return_poem_tones(lines)
    tone = ToneService.fetch_tones(lines)
    tone["document_tone"]["tones"]
  end
end
