# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_yougu_session',
  :secret      => '2f7c75c3a8e77ee73403873390fbd871b098a34bd9772a0d72ca732175a02405bb66805f91285026847e7e74c1b58404a9de9a3a6433ddd91fc7d4df5e3799cb'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
