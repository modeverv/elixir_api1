#! /bin/bash

APP=api
mix deps.get
MIX_ENV=prod mix compile
####cd assets
####brunch build --production
####cd ..
MIX_ENV=prod mix phoenix.digest
## MIX_ENV=prod mix ecto.create
## MIX_ENV=prod mix ecto.migrate
#PORT=4001 MIX_ENV=prod elixir --detatch -e "File.write! 'pid', :os.getpid" -S mix phoenix.server
PORT=4001 MIX_ENV=prod elixir -e "File.write! 'pid', :os.getpid" -S mix phoenix.server
