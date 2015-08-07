class String
  define_method(:word_count) do
    self.downcase().gsub(/'s/, " is")
  end
end
