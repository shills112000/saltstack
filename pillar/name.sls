{% set lookup = {
     'stuart': "Stuarts world",
     'keith': "Keiths world",
     'Kenny': "Kennys world",
} %}
{% set name = lookup[grains.id] %}

name: {{ name }}
