# Crontab
Run auto backup @ 4:00 PM and 10:00 PM (UTC+3)

```
0 16 * * * /bin/bash /home/ubuntu/ehkam-backend/backup.sh
0 22 * * * /bin/bash /home/ubuntu/ehkam-backend/backup.sh
```