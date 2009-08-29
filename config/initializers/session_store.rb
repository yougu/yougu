# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_yougu_session',
  :secret      => '3387cb35b2868288dfa1e8772a11270bcfa3b882c17f1dbe234362647d1150b4246a7521048b0711b82923478771ad90bdb84d29a615bbf91cf7eb4d214f9ec4'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
