!#/bin/bash
export PATH=$PATH:/usr/local/rvm/gems/ruby-2.4.1/bin
git clone https://github.com/Artemmkin/reddit.git
cd reddit && bundler install
puma -d
