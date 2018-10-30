#!/usr/bin/env bash

set -eou pipefail

data=$(curl \
  -s \
  http://127.0.0.1:10248/healthz
)

if [[ "$data" != "ok" ]]; then
  exit 20
fi

exit 0