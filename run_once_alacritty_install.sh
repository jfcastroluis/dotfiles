{{ if and (eq .chezmoi.os "linux") (eq .chezmoi.osRelease.id "pop") -}}
#!/bin/sh

sudo apt install alacritty
{{ end -}}
