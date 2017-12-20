letsencrypt:
  virtualenv.managed:
    - name: /opt/letsencrypt
    - system_site_packages: False
  pip.installed:
    - bin_env: /opt/letsencrypt
    - require:
      - virtualenv: letsencrypt
