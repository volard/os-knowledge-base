---
tags:
  - review
aliases: 
sources:
---
Config location: `/etc/nginx/nginx.conf`
Validate config command: `nginx -t`

- The `sites-available` directory in Nginx is a directory where you can store configuration files for individual websites or applications
- To enable a site, you create a symbolic link from the configuration file in `sites-available` to the `sites-enabled` directory. The `sites-enabled` directory contains symbolic links to the configuration files of the sites that are currently enabled and being served by Nginx.
```bash
sudo ln -s /etc/nginx/sites-available/example.com /etc/nginx/sites-enabled/
```

