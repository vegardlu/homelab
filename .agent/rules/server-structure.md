---
trigger: always_on
---

This is roughly the server structure for docker compose:

vegard@vidjeveien4-server:~$ tree -L 4
.
└── homelab
    ├── cloudflare
    │   └── compose.yaml
    ├── compose.yaml
    ├── homeassistant
    │   ├── compose.yaml
    │   └── config
    │       ├── automations.yaml
    │       ├── backups
    │       ├── blueprints
    │       ├── configuration.yaml
    │       ├── deps
    │       ├── home-assistant.log
    │       ├── home-assistant.log.1
    │       ├── home-assistant.log.fault
    │       ├── home-assistant_v2.db
    │       ├── home-assistant_v2.db-shm
    │       ├── home-assistant_v2.db-wal
    │       ├── scenes.yaml
    │       ├── scripts.yaml
    │       ├── secrets.yaml
    │       └── tts
    ├── homepage
    │   ├── compose.yaml
    │   └── config
    │       ├── bookmarks.yaml
    │       ├── custom.css
    │       ├── custom.js
    │       ├── docker.yaml
    │       ├── kubernetes.yaml
    │       ├── logs
    │       ├── proxmox.yaml
    │       ├── services.yaml
    │       ├── settings.yaml
    │       └── widgets.yaml
    ├── immich
    │   ├── compose.yaml
    │   └── photos
    │       ├── backups
    │       ├── encoded-video
    │       ├── library
    │       ├── profile
    │       ├── thumbs
    │       └── upload
    ├── kuma
    │   ├── compose.yaml
    │   └── data
    │       ├── docker-tls
    │       ├── kuma.db
    │       ├── kuma.db-shm
    │       ├── kuma.db-wal
    │       ├── screenshots
    │       └── upload
    └── plex