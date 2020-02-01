# frozen_string_literal: true

# Inherit that class to use services calling call into class.
class ApplicationService
  def self.call(*args, &block)
    new(*args, &block).call
  end
end
