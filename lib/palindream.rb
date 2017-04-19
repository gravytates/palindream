class String
  def palindream
    self.downcase.delete("^a-z").reverse == self.downcase.delete("^a-z")
  end
end
