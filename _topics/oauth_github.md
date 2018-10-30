---
topic: "OAuth: github"
desc: "Client Credential Setup for Github, Scopes"
layout: default
indent: true
---

Here is how you set up the GITHUB_CLIENT_ID and GITHUB_CLIENT_SECRET credentials that you need when using Github as an OAuth provider.

# Navigate to the Developer Settings, OAuth Applications

To get there:

1. Choose Settings from upper right drop down menu next to your personal avatar 
2. Find the Developer Menu, which is pretty far down the page on the left hand side. Find OAuth Apps on that menu.
3. Click the "Register a New Application" button.


![The page that shows the callback url](oauth-flask-urls-50.png)

![The page with the GITHUB_CLIENT_ID and GITHUB_CLIENT_SECRET](github-client-id-and-client-secret-example-50.png)



# Github Scopes

* <https://developer.github.com/v3/oauth/#scopes>

# Where to put Github Scopes in Rails


In `config/initializers/omniauth.rb`:

```ruby
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :github, Rails.application.secrets.omniauth_provider_key, Rails.application.secrets.omniauth_pro\
vider_secret scope: "user,repo,gist"
end
```
