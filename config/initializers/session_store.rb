# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_redgate_performance.git_session',
  :secret      => 'ddad591afd198d8747c02bbe1ce8d4c088d68d07bd030c1f515cb9a8ab21d24d7374d50cd62ef0b5a621221f3fa6377952b775c273e974537d6815d9325c0c4d'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
