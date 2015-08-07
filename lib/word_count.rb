class String
  define_method(:word_count) do
    self.downcase().gsub(/'s/, " is").gsub(/[!,.?]/, "").split(/ /)
  end
end
