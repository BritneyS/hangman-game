# frozen_string_literal: true

# word bank
WORD_BANK = {
  'cricket' => 'A game popular in India',
  'lottery' => 'Names are drawn to win a prize...or not!',
  'snake' => 'A sssneaky reptile',
  'treadmill' => 'Fake running'
}.freeze

# Class for hangman gameplay
class PlayHangman
  attr_accessor :word_bank, :word, :hint

  def initialize(word_bank)
    self.word_bank = word_bank
  end

  def select_word_and_hint(word_bank = self.word_bank)
    word_selection = word_bank.to_a.sample
    self.word = word_selection[0]
    self.hint = word_selection[1]
  end
end
