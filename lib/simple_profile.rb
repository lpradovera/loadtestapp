# encoding: utf-8

class SimpleProfile < Adhearsion::CallController
  include CallControllerHelper
  def run
    answer
    play_multi "#{Adhearsion.config.platform[:root]}/sounds/30sec-monkeys.wav"
    logger.info "CALL #{call.id} FINISHED"
    hangup
  end
end
