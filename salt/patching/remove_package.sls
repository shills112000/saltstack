# Test to remove a single package

{% from "patching/map.sls" import package with context %}

remove_package:
  pkg.installed:
    - name: {{ package.pkg }}

