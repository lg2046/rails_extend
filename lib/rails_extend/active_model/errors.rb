# -*- encoding : utf-8 -*-
module ActiveModel
  class Errors
    def to_s
      full_messages.join("\n")
    end

    def first_message
      self.first && self.first[1]
    end

    def to_human_errors
      values.flatten.inject("") do |str, msg|  str << "<p>" + msg + "</p>";  str  end
    end
  end
end
