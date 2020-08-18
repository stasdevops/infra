!#/bin/bash
git clone https://github.com/Artemmkin/reddit.git
cd reddit && bundler install
puma -d
