{% for user, args in pillar['users'].iteritems() %}
{{ user }}:
  user.present:
    - password: {{ args['password'] }}
    - fullname: {{ args['fullname'] }}
{% endfor %}
