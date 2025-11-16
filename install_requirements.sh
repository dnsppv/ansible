#!/usr/bin/env bash

echo "Installing Python modules"
pip install --requirement requirements.txt

echo "Installing roles"
ansible-galaxy role install --role-file requirements.yml

echo "Installing collections"
ansible-galaxy collection install --requirements-file requirements.yml
