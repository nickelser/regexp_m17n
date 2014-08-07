# encoding: utf-8

module RegexpM17N
  def self.non_empty?(str)
    str.force_encoding('UTF-8') =~ /^.+$/
  end
end