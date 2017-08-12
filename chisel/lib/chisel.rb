require 'pry'

class Chisel
  attr_reader :input
  def initialize(text)
    @input = text.split("\n\n")
  end

  def convert
    input.map do |line|
      line = body_format(line)
      line = emphasis_formatting(line)
  end

  def body_format(line)
    if line.start_with?("#")
      head_converter(line)
    else
      paragraph_convert(line)
    end
  end

  def paragraph_convert(line)
    "<p>" + line + "</p>"
  end

  def header_convert(line)
    hash_count = line.count("#")
    hash_string = hash_count.to_s
    "<h#{hash_string}>" + line.delete("#") + "</h#{hash_string}>"
  end
end
# document = "my_input.markdown"
#
# chisel = Chisel.new(document)
#
# chisel.parse(document)
end
