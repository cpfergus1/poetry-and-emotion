class PoetryFacade
  def self.return_ten(artist)
    poem_data = PoetryService.get_poetry(artist)
    poems = poem_data.map do |data|
      poem = Poem.new(data)
    end
    poems[0..9]
  end
end
