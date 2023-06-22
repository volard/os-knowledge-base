---
sources: https://www.computerhope.com/unix/ulpadmin.htm
---
Configures printer and class queues provided by the common printing system [[CUPS]]. It can also be used to set the server default printer or class.

Param | Meaning
------------| ------
-E|Encription
-d|sets the default printer or class
-p|configures the named printer or class
-x|delete printer or class

# Syntax
```bash
lpadmin [ -E ] [-U username ] [ -h server[:port] ] -d destination

lpadmin [ -E ] [-U username ] [ -h server[:port] ] -p destination 
        [ -R name-default ] option(s) 
        
lpadmin [ -E ] [-U username ] [ -h server[:port] ] -x destination

lpadmin -p LaserJet -E -v socket://10.1.1.1 -m laserjet.ppd
```

`-v` sets the `device-uri` attribute of the printer queue. Use the [[lpinfo]] command to get a list of supported device URIs and schemes.