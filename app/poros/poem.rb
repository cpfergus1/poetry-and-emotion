class Poem

  attr_reader :title, :author, :lines, :tone, :tone_score

  def initialize(data)
    @title = data[:title]
    @author = data[:author]
    @lines = data[:lines].join(' ')
    @tone = get_tone
  end

  def get_tone
    tones = ToneFacade.return_poem_tones(@lines)
    tones.each_with_object({}) do |tone,hash|
      hash[tone["tone_name"]] = tone["score"]
    end
  end
end
