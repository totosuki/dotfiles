#!/bin/bash

state=$(fcitx5-remote 2>/dev/null)

case "$state" in
  2) echo '{"text":"jp","alt":"ja","class":"ja","tooltip":"日本語入力 (Mozc)"}' ;;
  1) echo '{"text":"en","alt":"en","class":"en","tooltip":"英語入力"}' ;;
  *) echo '{"text":"--","alt":"off","class":"off","tooltip":"IME無効"}' ;;
esac
