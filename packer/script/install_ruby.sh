!#/bin/bash
curl -sSL https://get.rvm.io | bash -s stable --ruby=2.4.1 --gems=puma,bundler
source /usr/local/rvm/scripts/rvm
ruby -v
bundler -v
