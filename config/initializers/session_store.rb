# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_yougu_session',
  :secret      => '16d898a3b7f788f1b0ad0993f29b635d045490cafa5b6215944dc74a4d840934f9abe5e11f444d84961e569c363b7dbf79860ee47f5585a2805230d53aa3a104'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
