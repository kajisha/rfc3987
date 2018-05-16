require 'treetop'
require 'rfc3987/validation'
require 'rfc3987/version'

module RFC3987
  Parser = Treetop.load(File.expand_path('../../rfc3987.treetop', __FILE__))

  def self.parser
    Parser.new.extend(Validation)
  end
end
