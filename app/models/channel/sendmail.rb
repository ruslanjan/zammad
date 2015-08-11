# Copyright (C) 2012-2014 Zammad Foundation, http://zammad-foundation.org/

class Channel::Sendmail
  def send(attr, _channel, notification = false)

    # return if we run import mode
    return if Setting.get('import_mode')

    mail = Channel::EmailBuild.build(attr, notification)
    mail.delivery_method :sendmail
    mail.deliver
  end
end
