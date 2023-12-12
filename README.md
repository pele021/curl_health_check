# curl_health_check
check your site helth and send email if status fails

script is meant to run as cronjob
either in crontab or user cron job

# /etc/crontab

*/5 * * * *  USER /path/to/script

# as users cron
in cli type
$ crontab -e 

*/5 * * * *  /path/to/script
