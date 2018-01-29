postgres-server:
  pkg.installed:
    - pkgs: 
      - postgresql-10
    - refresh: True

postgres:
  service:
    - name: postgresql
    - running
    - watch:
      - pkg: postgres-server
      - file: /etc/postgresql/10/main/postgresql.conf
      - file: /etc/postgresql/10/main/pg_hba.conf

/etc/postgresql/10/main/postgresql.conf:
  file.managed:
    - source: salt://postgresql/files/postgresql.conf.jinja
    - template: jinja
    - user: root
    - group: root
    - mode: 640

/etc/postgresql/10/main/pg_hba.conf:
  file.managed:
    - source: salt://postgresql/files/pg_hba.conf.jinja
    - template: jinja
    - user: root
    - group: root
    - mode: 640
