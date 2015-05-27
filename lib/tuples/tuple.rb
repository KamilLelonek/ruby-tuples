class Tuple
  extend  Forwardable
  include Comparable

  def initialize(*values)
    @values = values.freeze
  end

  def self.[](*values)
    new(*values)
  end

  def <=>(other)
    return unless other.kind_of? self.class
    values <=> other.values
  end

  def invert
    Tuple(*values.reverse)
  end

  def_delegators :values,
                 :length,
                 :first,
                 :last,
                 :[]

  alias_method :arity, :length

  protected
  attr_reader :values
end

def Tuple(*values)
  Tuple.new(*values)
end
