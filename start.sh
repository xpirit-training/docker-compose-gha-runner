#!/bin/bash

ORG=$ORG
REG_TOKEN=$REG_TOKEN
NAME=$NAME
RUNNERGROUP=$RUNNERGROUP
LABELS=$LABELS

cd /home/docker/actions-runner || exit
./config.sh --url https://github.com/${ORG} --token ${REG_TOKEN} --name ${NAME} --labels ${LABELS} --runnergroup ${RUNNERGROUP}

cleanup() {
  echo "Removing runner..."
  ./config.sh remove --unattended --token ${REG_TOKEN}
}

trap 'cleanup; exit 130' INT
trap 'cleanup; exit 143' TERM

./run.sh & wait $!