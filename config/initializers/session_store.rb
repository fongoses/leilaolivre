# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_leilaolivre_session',
  :secret      => '548c7fdb45831d1bfb0913aead81e7be5fc88f2bb89ecf3dff6c16863c7b26a061fcfa51487dcc9de219067916c289b99e82f3a5d074646132b9a8519f19b6ea'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
