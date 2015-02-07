# docker-gitit

A Dockerfile for the [Gitit Wiki](https://github.com/jgm/gitit). There is no default user, you can register directly in the wiki.

## Volumes

### `/data`

`/data/gitit.conf` configuration file for gitit. If you don't provide it using the volume, a default one will be created.

Gitit will also create the following when started :

- `/data/static/` contains static (css and img) files used by gitit.
- `/data/templates/` contains HStringTemplate templates for wiki pages.
- `/data/wikidata/` contains the Git repo where all pages are stored.

## Ports

### 5001

Gitit webserver port
