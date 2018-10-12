require 'json'

# :nodoc:
class Record
  def self.all
    type = to_s.downcase + 's'
    data = JSON.parse(File.read('data.json'))
    data[type]
  end

  def self.find(id)
    all.select { |hash, _key| hash['id'] == id.to_i }.first
  end

  def self.where(resource, id)
    key = resource.chomp('s') + '_id'
    all.select { |hash, _key| hash[key] == id.to_i }
  end
end
