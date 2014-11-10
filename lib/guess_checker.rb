class GuessChecker

  def initialize(instream)
    @instream = instream
  end

  def compare_code(instream)
    code_maker  = CodeMaker.new
    game_code   = code_maker.generate
    player_code = instream.split('')
    player_code == game_code
  end

end
