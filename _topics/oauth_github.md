---
topic: "OAuth: github"
desc: "OAuth on Github"
layout: default
indent: true
---

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
