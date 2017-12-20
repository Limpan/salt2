{% for user, args in pillar['users'].iteritems() %}
{{ user }}-user:
  mysql_user.present:
    - name: {{ user }}
    - host: localhost
    - password: {{ args['password'] }}
    - require:
      - sls: mysql

{{ user }}-database:
  mysql_database.present:
    - name: {{ user }}
    - require:
      - sls: mysql

{{ user }}-grant:
  mysql_grants.present:
    - grant: all privileges
    - database: {{ user }}.*
    - user: {{ user }}
    - host: localhost
    - require:
      - sls: mysql
{% endfor %}
