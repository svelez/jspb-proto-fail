#!/usr/bin/env bash

# Passes
pbjs -t json -p ./protos \
    ./protos/testing/good.proto > ./src-gen/good.json

# Fails
pbjs -t json -p ./protos \
    ./protos/testing/failed_repeated_int.proto > ./src-gen/fri.json

# Fails
pbjs -t json -p ./protos \
    ./protos/testing/failed_repeated_str.proto > ./src-gen/frs.json

# Fails
pbjs -t json -p ./protos \
    ./protos/testing/failed_repeated_msg.proto > ./src-gen/frm.json
