if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Tvshows122/rocky-2025.git /TheMovieProviderBot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /TheMovieProviderBot
fi
cd /TheMovieProviderBot
pip3 install -U -r requirements.txt
echo "Starting TheMovieProviderBot...."
python3 bot.py
