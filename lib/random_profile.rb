# encoding: utf-8

class RandomProfile < Adhearsion::CallController
  include CallControllerHelper
  def run
    answer
    loops = rand(3) + 1
    loops.times do
      play_multi "#{Adhearsion.config.platform[:root]}/sounds/10sec-monkeys.wav"
    end
    logger.info "CALL #{call.id} FINISHED"
    hangup
  end
end
