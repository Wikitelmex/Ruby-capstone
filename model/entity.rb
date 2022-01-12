require 'json'
require 'fileutils'

class Entity
  def initialize(file_name)
    Dir.mkdir('./data') unless Dir.exist?('./data')
    @file_name = "./data/#{file_name}"
  end

  def save(payload)
    File.write(@file_name, JSON.generate(payload.map(&:to_json))) unless payload.empty?
  end

  def load(*args)
    jsonf = File.readable?(@file_name) ? JSON.parse(File.read(@file_name)) : nil
    jsonf ? args[0].to_array(jsonf, *args) : []
  end
end
