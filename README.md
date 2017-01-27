# docker-ax-livestreamer-alpine

Livestreamer bootstrapped to save streams to file using Alpine.

## Usage

```bash
docker pull vanaxe/livestreamer-alpine
docker run -it --rm -e 'TWITCH_OAUTH_TOKEN=1234' -v $HOME/Desktop:/srv/output vanaxe/livestreamer-alpine https://www.twitch.tv/typositoire
```

## Environment Variables

- `$LIVESTREAMER_DEFAULT_SOURCE` &mdash; The quality of stream to try and fetch
- `$LIVESTREAMER_OUTPUT_FILE` &mdash; Where to write the file and the name of the file
- `$TWITCH_OAUTH_TOKEN` &mdash; Keep it safe, keep it secret

## Contributing

1. Fork it!
2. Create your feature branch: `git checkout -b my-new-feature`
3. Commit your changes: `git commit -am 'Add some feature'`
4. Push to the branch: `git push origin my-new-feature`
5. Submit a pull request :D
