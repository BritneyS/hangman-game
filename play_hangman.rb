# frozen_string_literal: true

require_relative './extensions/string'

# word bank
WORD_BANK = {
  'cricket' => 'A game popular in India',
  'lottery' => 'Names are drawn to win a prize...or not!',
  'snake' => 'A sssneaky reptile',
  'treadmill' => 'Fake running'
}.freeze

# Class for hangman gameplay
class PlayHangman
  attr_accessor :word_bank, :word, :hint, :word_display, :guess

  def initialize(word_bank)
    self.word_bank = word_bank
  end

  def select_word_and_hint(word_bank = self.word_bank)
    word_selection = word_bank.to_a.sample
    self.word = word_selection[0]
    self.hint = word_selection[1]
  end

  def create_new_word_display
    self.word_display = word.chars.map { |_char| '_' }.join
  end

  def guess_valid?(guess)
    guess_is_valid = !guess.nil? && !guess.empty? && guess.length == 1 && guess.letter?
    return true if guess_is_valid

    false
  end

  def input_user_guess
    puts 'What letter do you guess?'
    possible_guess = gets.chomp.upcase
    if guess_valid?(possible_guess)
      self.guess = possible_guess
    else
      input_user_guess
    end
  end
end
