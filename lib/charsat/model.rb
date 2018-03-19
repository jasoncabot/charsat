require 'charsat'

module CharsAt
  class Model
    def initialize(content, indices)
      @content = content
      @indices = indices
    end

    def parsed
      @indices.map { |i| @content[i.to_i - 1] }
    end
  end
end
