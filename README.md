```
127.0.0.1 oauthprovider client
```

# Translation

Since you're using Docker, communication between apps is tricky. In short, they
are known by the names of the oauthprovider and client services. Each has a specific
port.

For everything to be standard and less messy, put it in the / etc / hosts of
your host machine:

127.0.0.1 oauthprovider client

And be careful to always access in the browser:

http: // oauthprovider: 3001

http: // client: 3002

Register the application on oauthprovider and update docker-compose.yml before you
start!
