# encoding: utf-8

class InputProfile < Adhearsion::CallController
  include CallControllerHelper
  def run
    answer
    play_multi "#{Adhearsion.config[:platform].root}/sounds/25sec-monkeys.wav"
    result = ask :limit => 1, :timeout => 10000
    logger.info "#{result} received"
    play_multi "#{Adhearsion.config[:platform].root}/sounds/10sec-monkeys.wav"
    hangup
  end
end
