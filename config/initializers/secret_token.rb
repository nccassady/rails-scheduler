# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
Scheduler::Application.config.secret_key_base = '96356f6b3e266f7e97ea0b47bc3ff53727e0685e3869d0969e08c587fa21cdd3a40fecf54aa56959e2e2cb9d79f32db528b682faf2af16a33d0671c124f7db15'
