#!/bin/bash

repos=(); while read url; do
    repos+=("https://api.github.com/repos/${url#https://github.com/}")
done

curl -u "${1:?'Missing github username'}" -X DELETE "${repos[@]}"
