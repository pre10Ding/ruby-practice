class RomanNumerals
  @roman_mapping = {
    1000 => 'M',
    900 => 'CM',
    500 => 'D',
    400 => 'CD',
    100 => 'C',
    90 => 'XC',
    50 => 'L',
    40 => 'XL',
    10 => 'X',
    9 => 'IX',
    5 => 'V',
    4 => 'IV',
    1 => 'I'
  }

  def self.int_to_roman(n, i = 0)
    return 'Number too large' if n >= 2000

    return '' if n.zero?

    key = @roman_mapping.keys[i]
    divmod_result = n.divmod(key)
    result = ''
    divmod_result[0].times { result += @roman_mapping[key] }
    result += int_to_roman(divmod_result[1], i + 1)
  end

  @roman_mapping_reversed = {
    'M' => 1000,
    'CM' => 900,
    'D' => 500,
    'CD' => 400,
    'C' => 100,
    'XC' => 90,
    'L' => 50,
    'XL' => 40,
    'X' => 10,
    'IX' => 9,
    'V' => 5,
    'IV' => 4,
    'I' => 1
  }

  def self.roman_to_int(str)
    # base case: no more characters in str return 0
    # $value = 0
    # if str has 2 or more chars: takes the last chars and find value in hash set it to $value, if $value != nil, $value += roman_to_int(str without the last 2 chars)
    # else if str has 1 chars || $value == nil: take the hash value and set it to $value, $value += roman_to_int(str without the last char)
    # return $value

    return 0 if str.length.zero?

    # if str has 2 or more chars, find the last 2 chars in hash
    value = @roman_mapping_reversed[str[-2..-1]] if str.length > 1
    # if value found in hash (not nil), return value + recurse with str w/o last 2 chars
    return value + roman_to_int(str[0..-3]) if value

    # else return value of last char in hash + recurse with str w/o last char
    @roman_mapping_reversed[str[-1]] + roman_to_int(str[0..-2])
  end
end

p RomanNumerals.roman_to_int('XIV')
p RomanNumerals.roman_to_int('MCDXVII')

# p RomanNumerals.int_to_roman(209)
# p RomanNumerals.int_to_roman(2090)

# p RomanNumerals.int_to_roman(1209)

# p RomanNumerals.int_to_roman(29)

# p RomanNumerals.int_to_roman(289)

# p RomanNumerals.int_to_roman(1309)
# p RomanNumerals.int_to_roman(1409)
