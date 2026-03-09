#!/bin/bash
# (c) J~Net 2025
#
#
# ./start.sh "file.db"
#
your_file="$1"
#your_file="jamied_uk-music.db" # yourfile.db
python3.12 -m venv venv
PYTHON_PATH=$(which python3.12)
echo "alias python='$PYTHON_PATH'" >> venv/bin/activate
source venv/bin/activate
echo "Virtual Environment setup and ready!"
echo ""


sqlite_web $your_file --host 0.0.0.0 --port 83856

brave-browser http://localhost:83856
