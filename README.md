# Smiled - ruby daemon to take laptop's user photo every second with ten percent chance

## Installation

Get yourself ruby 2.1. I recommend using [rvm](http://rvm.io).

Clone source:

```bash
git clone https://github.com/waterlink/smiled.git ~/.smiled-src
```

Install dependencies using bundler:

```bash
bundle install
```

Required system dependency is **streamer**. To install it on ubuntu just do `apt-get install streamer`

## Managing daemon

```bash
# to start daemon
./smilectl.rb start

# to stop daemon
./smilectl.rb stop

# to restart daemon
./smilectl.rb restart
```

## Setting up autostart for user

create rvm wrapper

```bash
rvm wrapper `rvm current` smiled
```

just add bash script to your home folder (or anywhere)

```bash
#!/usr/bin/env bash

cd $HOME/.smiled-src && $HOME/.rvm/bin/smiled_ruby smilectl.rb start >/dev/null || true

```

and add this script to your GUI autostart

