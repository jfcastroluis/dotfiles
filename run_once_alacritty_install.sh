#!/bin/sh
{{ if and (eq .chezmoi.os "linux") (eq .chezmoi.osRelease.id "pop") -}}

sudo apt install alacritty
{{ end -}}
