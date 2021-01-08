class Poem

  attr_reader :title, :author, :lines, :tone, :tone_score

  def initialize(data)
    @title = data[:title]
    @author = data[:author]
    @lines = data[:lines].join
    @tone = Hash.new
  end

  def get_tone
    tones = ToneFacade.return_poem_tones(@lines)
    tones.each do |tone|
      @tone[tone[:tone_name]] = tone[:score]
    end
  end
end
