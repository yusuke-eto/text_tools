# frozen_string_literal: true

# ファイルの書き込みを実行するクラス
# 指定された path のファイルに対して、指定された pattern の部分を replacement で書き換える
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

# path は実際に使う場合に書き換える
# get_file と組み合わせて使える想定
path = "hoge"
wirte_file = WriteFile.new(path)

# pattern と replacement も実際に使う場合に書き換える
# 正規表現に関してはここあたりを参考に
# https://docs.ruby-lang.org/ja/latest/doc/spec=2fregexp.html
pattern = "hoge"
replacment = "huga"
wirte_file.wirte_file_text(pattern, replacement)
