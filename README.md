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

for bash

```bash
echo "cd ~/.smiled-src && ./smilectl.rb start >/dev/null || true" | tee -a ~/.bash_profile
```

for zsh

```bash
echo "cd ~/.smiled-src && ./smilectl.rb start >/dev/null || true" | tee -a ~/.zprofile
```

