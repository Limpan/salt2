freeradius_repo:
  pkgrepo.managed:
    - ppa: freeradius/stable-3.0
    - require_in:
      - pkg: freeradius

freeradius:
  pkg.installed
