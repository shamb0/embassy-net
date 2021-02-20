#!/bin/bash

set -euxo pipefail

# build for std
(cd embassy-net; cargo +nightly build --features log)

# build for embedded
(cd embassy-net; cargo +nightly build --target thumbv7em-none-eabi --features log)
#(cd embassy-net; cargo +nightly build --target thumbv7em-none-eabi --features defmt)

# build examples
(cd embassy-net-examples; cargo +nightly build --features log)
