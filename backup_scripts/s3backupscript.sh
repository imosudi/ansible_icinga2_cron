#!/bin/bash
/root/backup_scripts/icinga2master_dbbackup.sh
/root/backup_scripts/dbserverbackup.sh
aws s3 sync /var/spool/icinga2/perfdata/ s3://imosudi/perfdata

aws s3 sync /root/backup/  s3://imosudi/db_backup

