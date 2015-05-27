require_relative 'tuple'

class Pair < Tuple
  def initialize(*values)
    values.flatten.tap do |arguments|
      raise ArgumentError, 'Pair must contain only two elements' if more_than_two_arguments?(arguments)
      super(arguments[0], arguments[1])
    end
  end

  private
  def more_than_two_arguments?(arguments)
    arguments.length > 2
  end
end

def Pair(*values)
  Pair.new(*values)
end
