---
topic: Slack
desc: Integrating your web app with Slack
---

# Creating a Slack App

To integrate slack into your own webapp, a first step is to create a "Slack App".

1. First, decide which Slack Workspace you want to create an app in (e.g. ucsb-cs56-f19.slack.com, or ucsb-cs-open-lab.slack.come, etc)
1. Start at: <https://api.slack.com/apps>
1. Click "Create an App"
1. You'll be asked for the name of your app and the name of your slack workspace.  Click create.
1. You'll be redirected to a page for your new Slack app.  If you scroll down that page, you'll see App Credentials, such as:
   * App ID
   * Client ID
   * Client Secret
   * Signing Secret
   * Verification Token
   
   There are also many other things you can do on that page to configure the app.
   

# Creating an incoming webhook

On the page for your slack app, you'll see on the left hand side, a place that says: "Incoming Webhooks".

These allow you to get an endpoint that you can use to post messages to a particular channel on your workspace without
additional authentication.   The URL itself is the authentication (it is obscure enough to be not guessable).

To create one:
* Go to the "Incoming Webhooks" page for your slack app.
* Then scroll down, and you can click "Add New Webhook to Workspace".
* Select a channel
* Get the URL

That URL should be treated like a "secret", because anyone having the URL can post to your slack without additional authentication.    To post, it is only necessary to send an HTTPS POST message containing JSON such as:

```
{"text": "message contents go here"}
```

For example, this Ruby Code (courtesy of [ProbablyFaiz](https://github.com/ProbablyFaiz) from this [proof-of-concept repo](https://github.com/ProbablyFaiz/RR-Slack-POC)

```
def send_slack_message
    url = URI(ENV['SLACK_INCOMING_WEBHOOK_LINK'])
    https = Net::HTTP.new(url.host, url.port)
    https.use_ssl = true
    body = "{'text':'" + params[:message] + "'}"
    response = https.post(url.path, body)
    redirect_to root_path
  end
```

That's the "old school" way of doing it, if you want to use a low level HTTPS client.   More likely, there will be some Slack API client for your programming language of choice.

For example:

* Ruby
   * <https://github.com/slack-ruby/slack-ruby-client> Lower Level Library
   * <https://github.com/slack-ruby/slack-ruby-bot> Higher Level, Builds on [slack-ruby-client](https://github.com/slack-ruby/slack-ruby-client).  "Does the heavy lifting such as message parsing so that you can focus on implementing slack bot commands).
   



