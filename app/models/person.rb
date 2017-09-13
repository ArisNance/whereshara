class Person < ActiveRecord::Base
  
    has_many :subscriptions
    
    def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |person|
      person.provider = auth.provider
      person.uid = auth.uid
      person.name = auth.info.name
      person.image = auth.info.image
      # person.location = auth.info.person_location 
      person.oauth_token = auth.credentials.token
      person.oauth_expires_at = Time.at(auth.credentials.expires_at)
      person.save!
    end
    end
end
