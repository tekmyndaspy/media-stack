#!/usr/bin/env bash
SINCE="${1:-1h}"
docker compose logs --since "$SINCE" | grep -iE '(\[(wrn|warn|err(or)?|fatal)\]|\b(warning|error|critical)\s*[:|])'