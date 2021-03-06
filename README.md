# LaMetric Time ZABBIX

![alt LaMetric_Time_ZABBIX](https://github.com/hermanekt/LaMetric_Time_ZABBIX/raw/master/howto/LaMetric_Zabbix.gif)

* This is the repository for La Metric Zabbix app. (public api version)

* Howto install:

(1/4) La Metric
1) login https://developer.lametric.com/ and follow this video:

[![Alt text](https://img.youtube.com/vi/Cv3dO27zAGo/0.jpg)](https://www.youtube.com/watch?v=Cv3dO27zAGo)


(2/4) Zabbix:
1) login to zabbix server, download lametric script and set permissions
```
wget -O /etc/zabbix/lametric.sh https://raw.githubusercontent.com/hermanekt/LaMetric_Time_ZABBIX/master/lametric.sh
```
```
chown zabbix:zabbix /etc/zabbix/lametric.sh && chmod +x /etc/zabbix/lametric.sh
```
2) Change 2 variables in the script (can be found in https://developer.lametric.com/applications/list):
```
nano /etc/zabbix/lametric.sh
```
```
LAMETRIC_DEVELOPER_URL='https://developer.lametric.com/api/v1/dev/widget/update/com.lametric.YOUR_APP_ID'
LAMETRIC_ACCESS_TOKEN='XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
```

(3/4) Set new Action in zabbix frontend (run script on zabbix server) - follow this video:

[![Alt text](https://img.youtube.com/vi/qvIWWdYpcLI/0.jpg)](https://www.youtube.com/watch?v=qvIWWdYpcLI)

* /etc/zabbix/lametric.sh "{EVENT.NAME}" "{EVENT.SEVERITY}" Problem
* /etc/zabbix/lametric.sh "{EVENT.NAME}" "{EVENT.SEVERITY}" OK

(4/4) Install your app to LaMetric Time - follow this video:

[![Alt text](https://img.youtube.com/vi/CIDScOpNKLg/0.jpg)](https://www.youtube.com/watch?v=CIDScOpNKLg)

DONE!

## Authors

* **Tomas Hermanek** - *Initial work* - [hermanekt](https://github.com/hermanekt)

## Acknowledgments

### Please give me feadback if you find bug or need some another thinks. Email is info"@"tomashermanek.cz, twitter is: hermanekt.

[![paypal](https://www.paypalobjects.com/en_US/i/btn/btn_donateCC_LG.gif)](https://www.paypal.com/cgi-bin/webscr?cmd=_donations&business=GEH7YJEBWTFWE&currency_code=USD&source=url)
