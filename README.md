# LaMetric Time ZABBIX — Webhook Edition 🎉

![LaMetric + Zabbix demo](https://github.com/hermanekt/LaMetric_Time_ZABBIX/raw/master/howto/LaMetric_Zabbix.gif)

This repository now ships a **native webhook** media-type for Zabbix, so you can push alerts to your LaMetric Time without any helper scripts.

---

## How to install

### 1/3  LaMetric Developer Portal  
1. Sign in at <https://developer.lametric.com/>  
2. Create an app of type **Simple Push** and jot down  
   * **API Key**  
   * **Device ID**  
   *(the video <https://youtu.be/Cv3dO27zAGo> still applies for these steps)*

### 2/3  Zabbix Media Type (Webhook)  
1. In the Zabbix frontend: **Administration → Media types → Import**  
2. Select **`Media-LaMetric.yaml`** from this repo.  
3. Open the newly imported media type **LaMetric** and fill in:  

| Parameter | Value (from LaMetric portal) |
|-----------|------------------------------|
| `LAMETRIC_API_KEY` | your API Key |
| `LAMETRIC_DEVICE_ID` | your Device ID |

### 3/3  Assign the media to users  
1. **Administration → Users → (choose user) → Media**  
2. **Add → Media type = LaMetric** (no “Send to” address required)  
3. Pick severities & time period → **Update**

That’s it—Zabbix will now deliver every matching problem/recovery notification straight to your LaMetric Time.

---

## (Legacy) Bash script

The old script **`lametric.sh`** is kept for reference in case you run an ancient Zabbix version without webhook support, but it is **no longer needed**.

---

## Authors

* **Tomáš Hermanek** – initial work & webhook migration – [@hermanekt](https://github.com/hermanekt)

---

## Feedback

Found a bug or have a feature request?  
Open an issue or drop a line at **info @ tomashermanek.cz** (Twitter ↗ `@hermanekt`).

If this project saved you time, consider buying a coffee ☕:

[![Donate via PayPal](https://www.paypalobjects.com/en_US/i/btn/btn_donateCC_LG.gif)](https://www.paypal.com/cgi-bin/webscr?cmd=_donations&business=GEH7YJEBWTFWE&currency_code=USD&source=url)
