# Slack Yammer Expander

Slack bot to expand yammer message 

Use [Slappy](https://github.com/wakaba260/slappy) gem. Thanks!!

## Usage

### ENV

- SLACK_TOKEN: Your slack api token
- YAMMER_NETWORK_NAME: Your Yammer Network name
- YAMMER_CLIENT_ID
- YAMMER_CLIENT_SECRET
- YAMMER_ACCESS_TOKEN

#### Get Yammer Access Token

Execute following rake command

> Set YAMMER_CLIENT_ID and YAMMER_CLIENT_SECRET env, before execute command.

```
> rake auth
visit the following url, and get access_token from redirected url.
redirected url example) http://localhost/oauth2/callback#access_token=<access_token>
https://www.yammer.com/oauth2/authorize?client_id=......
```

Get access token from redirected url, and Set YAMMER_ACCESS_TOKEN env.

### Run

```
> bundle exec slappy start
```
