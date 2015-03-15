# docker-gitit

A Dockerfile for the [Gitit Wiki](https://github.com/jgm/gitit). There is no default user, you can register directly in the wiki.

## Usage

For a first installation (if you don't already use Gitit) :

```bash
sudo docker run -d --name gitit -p 80:5001 hyzual/gitit
```

To use an existing Gitit wiki (assuming it's installed at /home/gitit/wiki), mount it as a volume :

```bash
sudo docker run -d --name gitit -p 80:5001 -v /home/gitit/wiki:/data hyzual/gitit
```

## Volumes

### `/data`

`/data/gitit.conf` should contain the configuration file for gitit. If you don't provide it using the volume, a default one will be created.

Gitit will also create the following when started :

- `/data/static/` contains static (css and img) files used by gitit.
- `/data/templates/` contains HStringTemplate templates for wiki pages.
- `/data/wikidata/` contains the Git repo where all pages are stored.

## Ports

### 5001

Gitit webserver port
