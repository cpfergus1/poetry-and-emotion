class PoetryService
  def self.get_poetry(artist)
    conn = Faraday.new(url: 'https://poetrydb.org/')
    data = conn.get("author/#{artist}")
    JSON.parse(data.body, symbolize_names: true)
  end
end
