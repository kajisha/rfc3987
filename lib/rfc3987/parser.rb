class RFC3987::Parser < Treetop::Runtime::CompiledParser
  include RFC3987

  class << self
    def valid_path?(str)
      !self.new.parse(str, root: :ipath).nil?
    end

    def valid_segment?(str)
      !self.new.parse(str, root: :isegment).nil?
    end
  end
end
