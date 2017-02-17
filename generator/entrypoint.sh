#!/bin/bash
set -e

cd /templates

for f in *.rkt
do
  racket $f
done
