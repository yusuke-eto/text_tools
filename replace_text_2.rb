# frozen_string_literal: true

# path 配下の rubyファイルを絶対パスで全て取得する
# 取得した path は配列に入って返ってくる
# @return [Array]
class FileGet
  def self.get_filenames(path)
    # File.joinの説明
    # 連結したいディレクトリ名やファイル名を文字列で与える
    rbfiles = File.join("**", "*.rb")
    Dir.glog(rbfiles, base: path)
  end
end

# ここで代入している path を適宜書き換えて使用する
path = "hoge"
puts FileGet.get_filenames(path)
