#!/usr/bin/env bash
set -u
aws --version || true
terraform -version || true
ansible --version | head -n 2 || true
aws sts get-caller-identity || echo "AWS identity check failed; configure credentials or use an approved AWS role."
