# Test to update a single package

{% from "patching/map.sls" import package with context %}

install_package
  pkg.installed:
    - name: {{ package.pkg }}

start_apache:
  service.running:
    - name : {{ package.srv }}

# Start on boot 
    - enable: True
