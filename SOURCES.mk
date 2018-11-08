
DOWNLOADCMD := wget -t 2 -T 10 -c -O

ZLIBVERSION = 1.2.11
ZLIBARCHIVE = zlib-$(ZLIBVERSION).tar.gz
ZLIBURI = https://www.zlib.net/$(ZLIBARCHIVE)

LIBXML2VERSION = 2.9.7
LIBXML2ARCHIVE = libxml2-$(LIBXML2VERSION).tar.gz
LIBXML2URI = http://xmlsoft.org/sources/$(LIBXML2ARCHIVE)

LIBJPEGVERSION = 1.5.2
LIBJPEGARCHIVE = libjpeg-turbo-$(LIBJPEGVERSION).tar.gz
LIBJPEGURI = https://prdownloads.sourceforge.net/libjpeg-turbo/$(LIBJPEGARCHIVE)

LIBPNGVERSION = 1.6.35
LIBPNGARCHIVE = libpng-$(LIBPNGVERSION).tar.gz
LIBPNGURI = https://prdownloads.sourceforge.net/libpng/$(LIBPNGARCHIVE)

LIBGDVERSION = 2.2.4
LIBGDARCHIVE = libgd-$(LIBGDVERSION).tar.gz
LIBGDURI = https://github.com/libgd/libgd/releases/download/gd-$(LIBGDVERSION)/$(LIBGDARCHIVE)

PCREVERSION = 8.41
PCREARCHIVE = pcre-$(PCREVERSION).zip
PCREURI = https://ftp.pcre.org/pub/pcre/$(PCREARCHIVE)

DROPBEARVERSION = 2017.75
DROPBEARARCHIVE = dropbear-$(DROPBEARVERSION).tar.bz2
DROPBEARURI = https://matt.ucc.asn.au/dropbear/releases/$(DROPBEARARCHIVE)

LIGHTTPDVERSION = 1.4.49
LIGHTTPDARCHIVE = lighttpd-$(LIGHTTPDVERSION).tar.gz
LIGHTTPDURI = https://download.lighttpd.net/lighttpd/releases-1.4.x/$(LIGHTTPDARCHIVE)

PHPVERSION = 7.2.0
PHPARCHIVE = php-$(PHPVERSION).tar.bz2
PHPURI = http://php.net/get/$(PHPARCHIVE)/from/this/mirror

SAMBAVERSION = 3.6.25
SAMBAARCHIVE = samba-$(SAMBAVERSION).tar.gz
SAMBAURI = https://download.samba.org/pub/samba/$(SAMBAARCHIVE)

MIJIACTRLVERSION = master
MIJIACTRLARCHIVE = mijia-720p-ctrl-$(MIJIACTRLVERSION).zip
MIJIACTRLURI = https://github.com/cck56/mijia-720p-ctrl/archive/$(MIJIACTRLVERSION).zip

RUNASVERSION = master
RUNASARCHIVE = runas.zip
RUNASURI = https://github.com/remram44/static-sudo/archive/$(RUNASVERSION).zip

RSYNCVERSION = 3.1.3
RSYNCARCHIVE = rsync-$(RSYNCVERSION).tar.gz
RSYNCURI = https://download.samba.org/pub/rsync/src/$(RSYNCARCHIVE)

X264VERSION = snapshot-20181028-2245-stable
X264ARCHIVE = x264-$(X264VERSION).tar.bz2
X264URI = http://download.videolan.org/pub/x264/snapshots/$(X264ARCHIVE)

FFMPEGVERSION = 4.0.2
FFMPEGARCHIVE = ffmpeg-$(FFMPEGVERSION).tar.bz2
FFMPEGURI = https://ffmpeg.org/releases/$(FFMPEGARCHIVE)


$(SOURCEDIR)/$(ZLIBARCHIVE):
	mkdir -p $(SOURCEDIR) && $(DOWNLOADCMD) $@ $(ZLIBURI)      || rm -f $@

$(SOURCEDIR)/$(LIBXML2ARCHIVE):
	mkdir -p $(SOURCEDIR) && $(DOWNLOADCMD) $@ $(LIBXML2URI)   || rm -f $@

$(SOURCEDIR)/$(LIBJPEGARCHIVE):
	mkdir -p $(SOURCEDIR) && $(DOWNLOADCMD) $@ $(LIBJPEGURI)   || rm -f $@

$(SOURCEDIR)/$(LIBPNGARCHIVE):
	mkdir -p $(SOURCEDIR) && $(DOWNLOADCMD) $@ $(LIBPNGURI)    || rm -f $@

$(SOURCEDIR)/$(LIBGDARCHIVE):
	mkdir -p $(SOURCEDIR) && $(DOWNLOADCMD) $@ $(LIBGDURI)     || rm -f $@

$(SOURCEDIR)/$(PCREARCHIVE):
	mkdir -p $(SOURCEDIR) && $(DOWNLOADCMD) $@ $(PCREURI)      || rm -f $@

$(SOURCEDIR)/$(X264ARCHIVE):
	mkdir -p $(SOURCEDIR) && $(DOWNLOADCMD) $@ $(X264URI)      || rm -f $@

$(SOURCEDIR)/$(OPENJPEGARCHIVE):
	mkdir -p $(SOURCEDIR) && $(DOWNLOADCMD) $@ $(OPENJPEGURI)  || rm -f $@


$(SOURCEDIR)/$(DROPBEARARCHIVE):
	mkdir -p $(SOURCEDIR) && $(DOWNLOADCMD) $@ $(DROPBEARURI)  || rm -f $@

$(SOURCEDIR)/$(LIGHTTPDARCHIVE):
	mkdir -p $(SOURCEDIR) && $(DOWNLOADCMD) $@ $(LIGHTTPDURI)  || rm -f $@

$(SOURCEDIR)/$(PHPARCHIVE):
	mkdir -p $(SOURCEDIR) && $(DOWNLOADCMD) $@ $(PHPURI)       || rm -f $@

$(SOURCEDIR)/$(SAMBAARCHIVE):
	mkdir -p $(SOURCEDIR) && $(DOWNLOADCMD) $@ $(SAMBAURI)     || rm -f $@

$(SOURCEDIR)/$(MIJIACTRLARCHIVE):
	mkdir -p $(SOURCEDIR) && $(DOWNLOADCMD) $@ $(MIJIACTRLURI) || rm -f $@

$(SOURCEDIR)/$(RSYNCARCHIVE):
	mkdir -p $(SOURCEDIR) && $(DOWNLOADCMD) $@ $(RSYNCURI)     || rm -f $@

$(SOURCEDIR)/$(RUNASARCHIVE):
	mkdir -p $(SOURCEDIR) && $(DOWNLOADCMD) $@ $(RUNASURI)     || rm -f $@

$(SOURCEDIR)/$(FFMPEGARCHIVE):
	mkdir -p $(SOURCEDIR) && $(DOWNLOADCMD) $@ $(FFMPEGURI)     || rm -f $@

