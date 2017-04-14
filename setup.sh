#!/usr/bin/env bash

echo ""
echo "If rvm is not installed, or not working properly,"
echo "   visit https://rvm.io/rvm/install and install that first."
echo "Then, then script should install everything else you need".
echo ""

echo "Installing software needed to run Jekyll locally... "
rvm install ruby-2.1.7
gem install bundler
bundle install --path vendor/bundle
echo "Done."
