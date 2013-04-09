require 'rltk'

module Params
  class Lexer < RLTK::Lexer
    rule(/\[/) {:OPEN_PAREN}
    rule(/\]/) {:CLOSE_PAREN}
    rule(/,/) {:COMMA}
    rule(/[-+]?[0-9.]+/) { |t| [:NUM, t.to_i]}
  end
end
