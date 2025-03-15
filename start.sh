if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Tvshows122/rocky-2025.git /TheMovieProviderBot1
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /TheMovieProviderBot1
fi
cd /TheMovieProviderBot1
pip3 install -U -r requirements.txt
echo "Starting TheMovieProviderBot...."
python3 bot.py
