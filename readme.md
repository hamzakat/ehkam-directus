# Ehkam Backend
This repo contains the main Docker compose file for Ehkam backend. It includes the following services:
- Directus
- PostGIS
- Redis
- Nginx Proxy Manager



## TODO
- [ ] Add migration data for Directus schema
- [ ] Import Directus schema after running the Docker Compose to setup the database properly
- [ ] Add detailed guide on how to setup the backend and dashboard


## Crontab
These are the configs used to run auto backup @ 4:00 PM and 10:00 PM (UTC+3)

```
0 16 * * * /bin/bash /home/ubuntu/ehkam-backend/backup.sh
0 22 * * * /bin/bash /home/ubuntu/ehkam-backend/backup.sh
```
