# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_yougu_session',
  :secret      => '2f5fc4789098b3db55eab1adc1d9c2fefab476487b7dab535a4eeeb0c826f1b647802b86a03c0ce44aa378eef739e7b8e1487d7dd0ec3f16ef26ae3c3a2d688b'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
