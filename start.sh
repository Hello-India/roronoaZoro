if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Anything-bro/RORONOA.git /RORONOA
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /RORONOA
fi
cd /RORONOA
pip3 install -U -r requirements.txt
echo "Starting RORONOA...."
python3 bot.py
