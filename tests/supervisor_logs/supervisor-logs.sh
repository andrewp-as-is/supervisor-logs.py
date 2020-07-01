#!/usr/bin/env bash
{ set +x; } 2>/dev/null

set -- /tmp/file.ini
( set -x; cp "${BASH_SOURCE[0]%/*}"/file.ini "$1" )
( set -x; supervisor-logs "$1" )
( set -x; cat "$1" )
