#!/bin/sh

date +" %w %Y年%m月%d日 %l:%M %:::z %Z" | sed "s/\s0\s/ 日 /;s/\s1\s/ 月 /;s/\s2\s/ 火 /;s/\s3\s/ 水 /;s/\s4\s/ 木 /;s/\s5\s/ 金 /;s/\s6\s/ 土 /"
