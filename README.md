discourse-topic-group-button
=======================

Adds a custom button at the bottom of a topic, visible only to staff or members of a specific group.

Configuration
=====

From Admin > Site Settings > Plugin, modify `topic_group_button_url`, `topic_group_button_title`, `topic_group_button_label`, `topic_group_button_allowed_group`.

Installation
============

* Add the plugin's repo url to your container's `app.yml` file

```yml
hooks:
  after_code:
    - exec:
        cd: $home/plugins
        cmd:
          - mkdir -p plugins
          - git clone https://github.com/discourse/docker_manager.git
          - git clone https://github.com/discourse/discourse-topic-group-button.git
```

* Rebuild the container

```
cd /var/docker
git pull
./launcher rebuild app
```

License
=======
MIT
