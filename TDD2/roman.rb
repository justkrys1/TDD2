class Fixnum
  def to_roman
    first = {
        1 => 'X', 2 => 'XX', 3 => 'XXX', 4 => 'XL', 5 => 'L', 6 => 'LX', 7 => 'LXX', 8 => 'LXXX', 9 => 'XC', 100 => 'C'}
    second = {
        1 => 'I', 2 => 'II', 3 => 'III', 4 => 'IV', 5 => 'V', 6 => 'VI', 7 => 'VII', 8 => 'VIII', 9 => 'IX', 10 => 'X', 0 => ''}

    first_digit, second_digit = self.divmod(10)

    if self.between?(1, 9); second[self]
    elsif self == 100; first[self]
    else first[first_digit] + second[second_digit]
    end
  end
end




