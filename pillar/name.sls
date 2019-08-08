{% set lookup = {
     'stuart': "Stuarts world",
     'jerry': "Jerrys world",
} %}
{% set name = lookup[grains.id] %}

name: {{ name }}
