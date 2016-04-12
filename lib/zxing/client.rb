require 'drb'

module ZXing
  BIN  = File.expand_path('../../../bin/zxing', __FILE__)
  PORT = ENV.fetch('ZXING_PORT', 47192)

  class Client
    def self.new
      DRbObject.new_with_uri("druby://127.0.0.1:#{PORT}")
    end
  end
end
