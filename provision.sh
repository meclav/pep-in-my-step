which cpanm || apt install cpanminus
which make || apt install make
cpanm install Mojolicious
APP_NAME=pep
APP_DIR=/app/$APP_NAME
mkdir -p $APP_DIR

#Deploy the code first?
ln -s /etc/systemd/system/$APP_NAME.service $APP_DIR/config/$APP_NAME.service
#Not sure if I need this
ln -s /etc/systemd/system/network-online.target.wants/rentsy.service /etc/systemd/system/$APP_NAME.service
