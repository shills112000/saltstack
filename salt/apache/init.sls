# Manage apache

{% from "apache/map.sls" import apache with context %}

install_apache:
  pkg.installed:
    - name: {{ apache.pkg }}

start_apache:
  service.running:
    - name : {{ apache.srv }}

# Start on boot if centos machine
    - enable: True

