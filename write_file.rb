# frozen_string_literal: true
class WriteFile
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def read_file_text
    File.open(path, "r")
  end

  def wirte_file_text(pattern, replacment)
    text = read_file_text
    File.open(path, "w") do |f|
      puts text.gsub(pattern, replacement)
    end
  end
end

path = "hoge"
wirte_file = WriteFile.new(path)

pattern = "hoge"
replacment = "huga"
wirte_file.wirte_file_text(pattern, replacement)
