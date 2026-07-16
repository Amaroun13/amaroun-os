#!/usr/bin/env bash
set -ouex pipefail

# Vypnutí problémového repozitáře Negativo17 před spuštěním rpm-ostree
if [ -f /etc/yum.repos.d/fedora-multimedia.repo ]; then
  sed -i 's/enabled=1/enabled=0/g' /etc/yum.repos.d/fedora-multimedia.repo
  echo "Repozitář fedora-multimedia byl úspěšně vypnut."
fi
