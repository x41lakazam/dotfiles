#!/bin/bash

cat $1 | nc termbin.com 9999 | xclip -selection clipboard

