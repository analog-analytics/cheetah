module Cheetah
  class TransactionalCheetah

    def initialize(options)
      @messenger = options[:messenger].new(options)
    end

    def send_email(aid, email, params = {})
      params['AID'] = aid
      params['email'] = email
      @messenger.send_message(Message.new(nil, params))
    end

  end
end
