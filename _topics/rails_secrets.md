---
topic: "Rails: secrets"
desc: "Keeping passwords, oauth client ids, etc. out of your github repo"
layout: default
indent: true
---

Sometimes there is secret information such as passwords, oauth client id and secret 
etc. that your application needs in order to run.     However, it is a bad idea to hard code these in files
that are going to be stored in github (even in a private repo).

What is more typical is to store these in environment variables, and read them in to the application with
code such as the following example from `config/secrets.yml`

```yml
development:
  omniauth_provider_key: <%= ENV["OMNIAUTH_PROVIDER_KEY"] %>
  omniauth_provider_secret: <%= ENV["OMNIAUTH_PROVIDER_SECRET"] %>
  machine_oauth_token: <%= ENV["MACHINE_OAUTH_TOKEN"] %>      
```

Then, your repo might contain a file such as this one, called `env.sh.EXAMPLE`:

```sh
# Copy this to env.sh (which is in .gitignore) and then edit with
# values from

export OMNIAUTH_PROVIDER_KEY="your_key"
export OMNIAUTH_PROVIDER_SECRET="your_secret"
export MACHINE_OAUTH_TOKEN="personal_access_token_machine_user_with_owner"
```

As the comment indicates, the intention is that you keep this example file (with dummy values for the secret information)
in the repo as a template, while listing the "real" file, `env.sh` in the `.gitignore` so that it is NOT committed to github.

Once you have a real copy of `env.sh`, you can source it with this command.  That isn't a typo: you really do type a period, a 
space, then the filename.  This loads the environment variables into your current shell.  (This is different from `./env.sh`, because the latter will run the `env.sh` file in a subprocess, leaving your 
current environment affected.)

```
. env.sh
```

# Heroku (through the dashboard)

On heroku, the way you load the environment variables is to go to the screen that looks like this, and click on "Reveal Config Vars":

![heroku reveal config vars](heroku_config_vars_50.png)

