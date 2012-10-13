module CallControllerHelper
  def chop_ext_if_asterisk(fname)
    if Adhearsion.config.punchblock.platform == :asterisk
      fname.chomp(File.extname(fname))
    else
      fname
    end
  end

  def play_multi(path)
    play(chop_ext_if_asterisk(path))
  end
end
