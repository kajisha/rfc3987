module RFC3987
  module Validation
    def valid_path?(str)
      !parse(str, root: :ipath).nil?
    end

    def valid_segment?(str)
      !parse(str, root: :isegment).nil?
    end
  end
end
