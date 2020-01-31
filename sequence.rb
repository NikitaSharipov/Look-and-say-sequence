class Sequence
  def initialize(previous_member, sequence_length)
    @current_step = 1
    @sequence = [previous_member]
    sequence_construction(previous_member, sequence_length)
  end

  def sequence_construction(previous_member, sequence_length)
    while @current_step < sequence_length
      previous_member = sequence_member(previous_member)
      @sequence << previous_member
      @current_step += 1
    end
  end

  def sequence_member(previous_member)
    digits_array = previous_member.digits.reverse
    new_member = []

    current_step = 0
    repetitions = 1

    while current_step != digits_array.length
      repetitions = 1

      while digits_array[current_step] == digits_array[current_step + 1]
        repetitions += 1
        current_step += 1
      end
      new_member << repetitions
      new_member << digits_array[current_step]
      current_step += 1

    end
    new_member.join.to_i
  end
end
