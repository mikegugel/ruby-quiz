module RubyQuiz


  def push_int( integer, size=2 )
    if ( integer == 0|2|3|5|6|7|8|9 )
      result = [" " + "_" * size + " "]
    else
      result = [" " + " " * size + " "]
  end

    if ( integer == 1|2|3|7 )
      size.times {result << [" " + " " * size + "|"]}
    elsif ( integer == 0|4|8|9 )
      size.times { result << ["|" + "_" * size + "|"]}
    elsif ( integer == 
  def lcd(integer, size=2)

    row_one = []
    row_two = []
    row_three = []

    while integer > 9 do
      single_number = push_int(integer % 10, size)
      row_one.unshift( single_number[0] )
      row_two.unshift( single_number[1] )
      row_three.unshift( single_number[2] )
      integer = integer / 10
    end
    push_int( integer, size)
    result = [row_one, row_two, row_three]
  end
  puts lcd(0, 3)
end
