# Docker Image for PHP (CLI)

This is a Docker image based on the official "php:7.4-cli-alpine" image, with
the addition of a few standard extensions, composer, a couple handy packages,
and some bash aliases.

This can be used to replace a local version of PHP on an OS X machine, including
mounting the current directory and the local composer cache by aliasing the
following:

```
php='docker run -it --rm -v ~/.composer/cache/:/root/.composer/cache -v "$(pwd):/app" wickedbyte/docker-php-cli php'
```

### Composer Packages
```
psy/psysh:@stable
nesbot/carbon
laravel/installer
laravel-zero/installer
icanhazstring/composer-unused
```

### PHP Modules
```
bcmath
Core
ctype
curl
date
dom
ds # Docker Image for PHP (CLI)

This is a Docker image based on the official "php:7.4-cli-alpine" image, with
the addition of a few standard extensions, composer, a couple handy packages,
and some bash aliases.

This can be used to replace a local version of PHP on an OS X machine, including
mounting the current directory and the local composer cache by aliasing the
following:

```
php='docker run -it --rm -v ~/.composer/cache/:/root/.composer/cache -v "$(pwd):/app" wickedbyte/docker-php-cli php'
```

### Composer Packages
```
psy/psysh:@stable
nesbot/carbon
laravel/installer
laravel-zero/installer
icanhazstring/composer-unused
```

### PHP Modules
```
bcmath
Core
ctype
curl
date
dom
ds
exif
fileinfo
filter
ftp
gd
gmp
hash
iconv
json
libxml
mbstring
mysqlnd
openssl
pcntl
pcre
PDO
pdo_mysql
pdo_sqlite
Phar
posix
readline
Reflection
session
SimpleXML
sodium
SPL
sqlite3
standard
tokenizer
xml
xmlreader
xmlwriter
zip
zlib
```

exif
fileinfo
filter
ftp
gd
gmp
hash
iconv
json
libxml
mbstring
mysqlnd
openssl
pcntl
pcre
PDO
pdo_mysql
pdo_sqlite
Phar
posix
readline
Reflection
session
SimpleXML
sodium
SPL
sqlite3
standard
tokenizer
xml
xmlreader
xmlwriter
zip
zlib
```
