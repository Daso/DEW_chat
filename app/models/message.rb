class Message < ActiveRecord::Base

  Pusher.app_id = '14677'
  Pusher.key = 'c0b97835ccce8d568a10'
  Pusher.secret = '8181b30f36412d611cb2'

  after_create :send_to_pusher

  def send_to_pusher
    logger.info "Hi?"
    Pusher['demoChat'].trigger("message:create",self.to_json)  
  end

end
