# publish-to-ipfs

This script publishes given asciicast as a standalone HTML page to IPFS.

It publishes a directory which contains:

- static index.html
- asciinema-player (js+css)
- asciicast file (from path given as the argument to the script)

## Usage

    $ publish.sh <path-to-asciicast>

    >> Downloading asciinema-player 2.6.0...
    >> Copying index.html...
    >> Copying hello-ipfs.cast...
    >> Publishing directory to IPFS...
    https://gateway.ipfs.io/ipfs/QmNe7FsYaHc9SaDEAEXbaagAzNw9cH7YbzN4xV7jV1MCzK

## Demo

[![asciicast](https://asciinema.org/a/1RdOYnYtFebN6Xv7dv3thdBlt.png)](https://asciinema.org/a/1RdOYnYtFebN6Xv7dv3thdBlt)
