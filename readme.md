# Hassio Slack Bot addon
[Slack Bot documentation](http://github.com/innogames/slack-bot)

# Installation
Put config files into `/share/slack-bot/`. All .yaml files are loaded and merged.

# Example config
```
slack:
  token: xoxb-121212121-232232-jdishd9D9hds 

allowed_users:
  - yourname

cron:
  - schedule: 0 * * * *
    channel: #dev
    command: 
     - reply "hourly notification"
     - trigger job Deploy master to staging
``
