#!/usr/bin/env bash

echo "updating all cask installed appslications"
for c in `brew cask list`; do ! brew cask info $c |grep -qF "Not installed" || brew cask install $c; done
echo "update done"
