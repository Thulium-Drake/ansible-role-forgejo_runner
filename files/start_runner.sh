#!/bin/bash
# Register the runner with Forgejo and start it afterwards
RUNNER=/data/.runner

if [ ! -f ${RUNNER} ]
then
  echo "Cannot find ${RUNNER}, registering with Forgejo"
  forgejo-runner \
    -c /config.yaml \
    register \
    --no-interactive \
    --name ${FORGEJO_RUNNER_NAME} \
    --instance ${FORGEJO_INSTANCE_URL} \
    --token ${FORGEJO_RUNNER_REGISTRATION_TOKEN}
fi

echo "Starting Runner"
forgejo-runner \
  -c /config.yaml \
  daemon
