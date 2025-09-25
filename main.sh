#!/bin/bash
cd velocity

echo "Your MOTD (eagler only): $MOTD"
echo "Your Max Players: $MAXPLAYERS"
echo "Your IP (server): $SERVER"
echo "Your 2nd IP (server): $SERVER2"
echo "Your 3rd IP (server): $SERVER3"

sed -i 's/${MOTD}/'"$MOTD"'/g' velocity.toml
sed -i 's/${MAXPLAYERS}/'"$MAXPLAYERS"'/g' velocity.toml
sed -i 's/${SERVER}/'"$MAXPLAYERS"'/g' velocity.toml
sed -i 's/${SERVER2}/'"$MAXPLAYERS"'/g' velocity.toml
sed -i 's/${SERVER3}/'"$MAXPLAYERS"'/g' velocity.toml

cd plugins
cd eaglerxserver

sed -i 's/${MOTD}/'"$MOTD"'/g' listeners.toml

cd ..
cd ..

echo "Starting Velocity!"
java -Xmx512M -Xms512M -jar velocity.jar
