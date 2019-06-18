require_relative 'truncate'
require 'securerandom'

class Message
  extend Truncate

  attr_accessor :id, :body

  truncate :body, length: 120

  def initialize(body)
    @id = SecureRandom.uuid
    self.body = body
  end
end
