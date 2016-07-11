class Bike
  def working?
    true
  end
  def report_broken
    @broken = true
  end
  def broken?
    @broken
  end
  def fix?
    @fix = true
  end
end
