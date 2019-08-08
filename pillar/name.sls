{% set lookup = {
     'stuart': "Stuarts world",
     'keith': "Keiths world",
} %}
{% set name = lookup[grains.id] %}

name: {{ name }}
