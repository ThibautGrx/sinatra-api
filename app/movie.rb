require 'json'

class Movie
  def self.all
    a = JSON.parse(File.read('data.json'))
    a['movies']
  end

  def self.find(id)
    all.select { |hash, _key| hash['id'] == id.to_i }
  end
end
