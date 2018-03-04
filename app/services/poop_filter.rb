module PoopFilter
  SHITTY_WORDS = %w[
    shit fuck piss poop
  ]

  module_function

  def filter(text)
    text.gsub(/#{ Regexp.union(SHITTY_WORDS).source }/i, '💩')
  end
end
