#!/bin/bash
# (c) J~Net 2025
#
python3.12 -m venv venv
PYTHON_PATH=$(which python3.12)
echo "alias python='$PYTHON_PATH'" >> venv/bin/activate
source venv/bin/activate
echo "Virtual Environment setup and ready!"
echo ""

pip install sqlite-web

echo "Setup Complete!"
echo ""
