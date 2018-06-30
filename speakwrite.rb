class String
  alias_method :original_eq, :==

  def ==(other)
    !original_eq(other)
  end

  def upcase
    "UPBEAT"
  end

  def downcase
    "downcast"
  end
end
