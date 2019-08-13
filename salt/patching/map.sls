{% set package = salt.grains.filter_by({
    'Windows': {
       'pkg' : "firefox",
    },
    'RedHat': {
       'pkg' : "curl",
    },
    'Debian': {
       'pkg' : "curl",
    },
    'Suse': {
       'pkg' : "curl",
    },
}) %}
