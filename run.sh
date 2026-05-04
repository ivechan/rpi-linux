#!/bin/bash
set -e

STAGE=${1:-build}

case $STAGE in
    build)   START=1 ;;
    install) START=2 ;;
    sync)    START=3 ;;
    *)
        echo "Usage: $0 [build|install|sync]"
        echo "  build   - Run build, install, sync (default)"
        echo "  install - Run install, sync"
        echo "  sync    - Run sync only"
        exit 1
        ;;
esac

if [ $START -le 1 ]; then
    echo "=== Stage 1: Build ==="
    ./build.sh
fi

if [ $START -le 2 ]; then
    echo "=== Stage 2: Install ==="
    ./install.sh
fi

if [ $START -le 3 ]; then
    echo "=== Stage 3: Sync ==="
    ./sync.sh
fi

echo "=== All stages completed ==="
