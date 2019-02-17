# LaMetric_Time_ZABBIX

![alt LaMetric_Time_ZABBIX](https://github.com/hermanekt/LaMetric_Time_ZABBIX/raw/master/howto/LaMetric_Zabbix.gif)

This is repo for La Metric display plugin. (public api version)

Howto install:

Zabbix:
1) log in zabbix server and download lametric script and set permissions
wget -O /etc/zabbix/lametric.sh https://raw.githubusercontent.com/hermanekt/LaMetric_Time_ZABBIX/master/lametric.sh
chown zabbix:zabbix /etc/zabbix/lametric.sh && chmod +x /etc/zabbix/lametric.sh

2) Change in script 2 variables(can be found in https://developer.lametric.com/applications/list):
nano /etc/zabbix/lametric.sh

LAMETRIC_DEVELOPER_URL='https://developer.lametric.com/api/v1/dev/widget/update/com.lametric.YOUR_APP_ID'
LAMETRIC_ACCESS_TOKEN='XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'

2) Set new Action in zabbix fronted (run script on zabbix server)
/etc/zabbix/lametric.sh {EVENT.NAME} {EVENT.SEVERITY} Problem
/etc/zabbix/lametric.sh {EVENT.NAME} {EVENT.SEVERITY} OK

