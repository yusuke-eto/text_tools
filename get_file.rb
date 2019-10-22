# frozen_string_literal: true
class FileGet
  attr_accessor :filenames
  def initialize
    @filenames = []
  end

  def get_filenames(path)
    Dir::foreach(path) do |v|
      next if v == "." or v == ".."
      if path =~ /\/$/
        v = path + v
      else
        v = path + "/" + v
      end

      if FileTest::directory?(v)
        get_filenames(v) #再帰呼び出し リカーシブ　コール/Recursive Call
      else
        # fileだった時のみ filenames に追加する
        filenames <<  v 
      end
    end
    filenames
  end
end

fileget = FileGet.new
filenames = fileget.get_filenames("/Users/yusuke/Rails/Glenfiddich/task_management/app/")
p filenames
