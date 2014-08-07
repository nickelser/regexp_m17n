require 'iconv'

module RegexpM17N
  def self.non_empty?(str)
    if Encoding.compatible?(str, '.')
      str =~ /^.+$/
    else
      converted = begin
        str.encode!('UTF-8')
      rescue Encoding::CompatibilityError => e
        Iconv.conv(str.encoding.name, 'UTF-8', str)
      end

      converted =~ /^.+$/
    end
  end
end