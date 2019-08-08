{% set apache = salt.grains.filter_by({
    'Windows': {
       'pkg' : "httpd",
       'srv' : "httpd",
    },
    'RedHat': {
       'pkg' : "httpd",
       'srv' : "httpd",
    },
    'Debian': {
       'pkg' : "apache2",
       'srv' : "apache2",
    },
    'Suse': {
       'pkg' : "apache2",
       'srv' : "apache2",
    },
}) %}
