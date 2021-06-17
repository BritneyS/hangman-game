# frozen_string_literal: true

# String class extension
class String
  def letter?
    match?(/[[:alpha:]]/)
  end
end
