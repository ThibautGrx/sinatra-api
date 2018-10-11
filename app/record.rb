require 'json'

class Record
  def self.all
    type = self.to_s.downcase + 's'
    data = JSON.parse(File.read('data.json'))
    data[type]
  end

  def self.find(id)
    all.select { |hash, _key| hash['id'] == id.to_i }.first
  end
end