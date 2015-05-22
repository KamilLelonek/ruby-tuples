class Tuple
  def initialize(*args)
    @args = args
  end

  def self.[](*args)
    new(*args)
  end
end

def Tuple(*args)
  Tuple[*args]
end
