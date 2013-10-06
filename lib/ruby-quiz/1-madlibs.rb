module RubyQuiz

  def find_placeholder(a_string)
    pattern = /\(\((.+?)\)\)/
    a_string.scan(pattern).flatten
  end

  def prompt_placeholders(a_string)
    placeholder_values = []
    placeholder_list = find_placeholder(a_string)
    placeholder_list.each do |placeholder|
      puts "Enter #{placeholder}:"
      input = gets
      a_string = a_string.sub /\(\(.+?\)\)/, "#{input.chomp}"
    end
    a_string
  end


end
