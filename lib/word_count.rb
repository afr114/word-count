class String
  define_method(:word_count) do
    self.downcase().gsub(/'s/, " is").gsub(/[!,.?]/, "")
  end
end
