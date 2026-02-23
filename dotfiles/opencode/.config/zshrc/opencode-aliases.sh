#!/bin/env bash

alias opencode="podman run -it --rm -v \"$(pwd):/workspace\" -w /workspace ghcr.io/anomalyco/opencode"
