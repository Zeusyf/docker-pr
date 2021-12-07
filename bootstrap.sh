#!/bin/bash

if [[ ! -z "${WALLET_ADDR}" ]]; then
  /opt/uam/uam --pk ${WALLET_ADDR:-} --no-ui
else
  /bin/bash
fi
