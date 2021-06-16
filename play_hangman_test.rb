# frozen_string_literal: true

require 'test/unit'
require_relative './play_hangman'

TEST_WORD_BANK = {
  'cricket' => 'A game popular in India',
  'lottery' => 'Names are drawn to win a prize...or not!',
  'snake' => 'A sssneaky reptile'
}.freeze

# Test class for hangman gameplay
class PlayHangmanTest < Test::Unit::TestCase
  def setup
    @hangman_game = PlayHangman.new(TEST_WORD_BANK)
  end

  def test_word_and_selection
    # pass if word and hint is selected from word bank
    @hangman_game.select_word_and_hint({ 'cricket' => 'A game popular in India' })
    assert_equal 'cricket', @hangman_game.word, "hangman_game.word should equal 'cricket'"
    assert_equal 'A game popular in India', @hangman_game.hint,
                 "hangman_game.hint should equal 'A game popular in India'"
  end

  def test_display_empty_letter_slots
    # pass if empty letter slots displayed if word is selected, and number of slots matches word char count
  end

  def test_receive_user_input
    # pass if user input received
  end

  def test_check_valid_user_input
    # pass if input check returns true when input is a single alphabetical character
  end

  def test_check_invalid_user_input_non_alpha_character
    # pass if input check returns false when input is a single non-alphabetical character
  end

  def test_check_invalid_user_input_more_than_one_character
    # pass if input check returns false when input is multiple characters
  end

  def test_return_hint_if_user_asks_for_hint
    # pass if hint is returned
  end

  def test_valid_letter_guess
    # pass if guess check returns true for alphabetical character
  end

  def test_invalid_letter_guess
    # pass if guess check returns false for non-alphabetical character
  end

  def test_display_letter_slot_update_on_correct_guess
    # pass if letter slot display updates on correct guess
  end

  def test_display_letter_slot_no_update_on_incorrect_guess
    # pass if letter slot display updates on correct guess
  end

  def test_display_hangman_no_update_on_correct_guess
    # pass if letter slot display updates on correct guess
  end

  def test_display_hangman_update_on_incorrect_guess
    # pass if letter slot display updates on correct guess
  end

  def test_game_win_if_word_is_fully_guessed
    # pass if game is won after no empty slots left
  end

  def test_game_loss_hangman_complete
    # pass if game is lost after hangman is complete
  end
end
