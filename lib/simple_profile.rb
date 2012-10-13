# encoding: utf-8

class SimpleProfile < Adhearsion::CallController
  include CallControllerHelper
  def run
    answer
    play_multi "#{Adhearsion.config.platform[:root]}/sounds/80sec-monkeys.wav"
    play_multi "#{Adhearsion.config.platform[:root]}/sounds/25sec-monkeys.wav"
    play_multi "#{Adhearsion.config.platform[:root]}/sounds/25sec-monkeys.wav"
    hangup
  end
end
