base:
  'auth':
    - radius
  'proxy':
    - nginx
    - letsencrypt
  'web*':
    - nginx
    - letsencrypt
  'db*':
    - users
    - mysql
