#!/bin/bash
from="please@change.me"
to="please@change.me"
status_code=$(curl --write-out  "%{http_code} --silent --output /dev/null  "http://https://example.com/")
if [[($code -ne 200)]]; then
  echo -e "Subject: site status changed to $status_code \n\n Health check http_status_code:$status_code  \n"" | /usr/sbin/sendmail -f "${from}" -t "${to}"
else
  exit 0
fi
