class FileGet
  def self.get_filenames(path)
    rbfiles = File.join("**", "*.rb")
    Dir.glog(rbfiles, base: path)
  end
end

path = "hoge"
puts FileGet.get_filenames(path)
