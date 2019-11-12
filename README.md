# nflscrapr Docker Container API

This repo builds the image for a Docker Container with [nflscrapr](https://github.com/maksimhorowitz/nflscrapR) installed and ready to use.

The `/scripts` directory acts as a pseudo-API. A script can be execued by calling the target script and passing arguments to the container's `CMD` at runtime.

## Example Usage

Running the following will execute the `games.r` with arguments:

`docker run nflscrapr games --year=2019 --type=reg`


