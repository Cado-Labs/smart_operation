# frozen_string_literal: true

require 'smart_core'

# @api public
# @since 0.1.0
class SmartCore::Operation
  require_relative 'operation/version'
  require_relative 'operation/errors'
  require_relative 'operation/result'
  require_relative 'operation/interface'

  include SmartCore::Operation::Interface::Initializer
  include SmartCore::Operation::Interface::Result
  include SmartCore::Operation::Interface::Callable

  # @return [SmartCore::Operation::Result::Success]
  # @return [SmartCore::Operation::Result::Callback]
  # @return [SmartCore::Operation::Result::Failure]
  # @return [SmartCore::Operation::Result::Fatal]
  #
  # @api public
  # @since 0.1.0
  def call
    Success()
  end
end
