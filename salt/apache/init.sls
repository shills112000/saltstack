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
    - watch:       
      - file: some_config   # restart service if this file ever changes


some_config:
  file.managed:
    - name: /tmp/foo
    - contents: boo
