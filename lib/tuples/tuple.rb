class Tuple
  include Comparable

  def initialize(*values)
    @values = values.freeze
  end

  def self.[](*values)
    new(*values)
  end

  def <=>(other)
    return unless other.kind_of? self.class
    values <=> other.send(:values)
  end

  private
  attr_reader :values
end

def Tuple(*values)
  Tuple[*values]
end
