class Card
  VALUES = ("A".."Z").to_a

  attr_reader :value

  def self.shuffled_pairs(num_pairs)
    values = VALUES

    while num_pairs > values.length
      values = values + values
    end

    values = values.shuffle.take(num_pairs) * 2
    values.shuffle!
    values.map { |val| self.new(val) }
  end
  
  def initialize(value, showing = false)
    @value = value
    @showing = showing
  end
  
  def hide
    @showing = false
  end
  
  def reveal
    @showing = true
  end

  def revealed?
    @showing
  end

  def to_s
    revealed? ? value.to_s : " "
  end

  def ==(object)
    object.is_a?(self.class) && object.value == value
  end
end