#!/bin/env bash
git config --global core.autocrlf true


if [[ "$DEBUG" == "TRUE" ]] ; then
git config --list
fi