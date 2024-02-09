if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Anything-bro/RORONOA.git /RORONOABOT
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /RORONOABOT
fi
cd /RORONOA
pip3 install -U -r requirements.txt
echo "Starting RORONOA...."
python3 bot.py
