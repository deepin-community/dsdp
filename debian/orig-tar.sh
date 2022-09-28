#!/bin/sh

# called by uscan with '--upstream-version' <version> <file>

tar xf $3 --exclude '*.pdf'
unzip DSDP$2/docs/DSDP5-api-html.zip
rm -rf dox/html dox/images DSDP$2/docs/DSDP5-api-html.zip
mv dox DSDP$2/docs/dox
tar czf $3 DSDP${2}
rm -rf DSDP$2

# move to directory 'tarballs'
if [ -r .svn/deb-layout ]; then
  . .svn/deb-layout
  mv $3 $origDir
  echo "moved $3 to $origDir"
fi

exit 0
