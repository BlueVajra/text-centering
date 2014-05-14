class CenterIt
  def initialize(string)
    @strings = string.split(/\n/)
    @strings.map! {|x| x.strip}
    @formatted_string = []
    parse_strings
  end

  def center
    @formatted_string.join("\n")
  end

  def parse_strings
    string_length = @strings.map {|s| s.length }.max
    @formatted_string = @strings.map do |s|
      spaces = (string_length-s.length)/2
      new_string = ""
      spaces.times do |x|
        new_string += ' '
      end
      new_string += s
    end
  end
end