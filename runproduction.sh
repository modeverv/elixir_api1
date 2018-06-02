#! /bin/bash

#elixir --detached -e "File.write! 'pid', :os.getpid" -S mix phoenix.server
export PORT=4001
elixir -e "File.write! 'pid', :os.getpid" -S mix phoenix.server
