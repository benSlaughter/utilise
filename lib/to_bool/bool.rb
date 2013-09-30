module Bool
  def to_b
    case self
    when /true/i, /yes/i, /t/i, /1/i, 1
      true
    when /false/i, /no/i, /f/i, /0/i, 0
      false
    end
  end
end