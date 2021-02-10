# Home Assistant Slack Bot Addon
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
          
commands:
 - name: deploy branch
   trigger: "deploy branch (?P<branch>.*)"
   commands:
    - "reply I'll build {{ .branch }} for you"
    - "trigger job BuildFrontendClient {{ .branch }}"
    - "trigger job BuildMobileClient {{ .branch }}"
    - "then reply done! :checkmark:"     

# maaany other options/commands possible...    
``
