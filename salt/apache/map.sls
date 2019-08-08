{% set apache = salt.grains.filter_by({
    'Windows': {
       'pkg' : "httpd",
       'srv' : "httpd",
    },
    'RedHat': {
       'pkg' : "httpd",
       'srv' : "httpd",
    },
}) %}
