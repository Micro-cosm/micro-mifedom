#!/usr/bin/zsh

# if [[ -e /usr/local/kong/declarative/kong.yml ]]; then
# 	echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! removing kong default declarations !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
#     rm /usr/local/kong/declarative/kong.yml
# fi;

# envsubst '${TARGET_ALIAS}'  < /usr/local/kong/declarative/kong."${TARGET_ALIAS}".yml > /usr/local/kong/declarative/kong.yml

chmod -R  777  /usr/local/kong/declarative
# mv /usr/local/kong/declarative/kong.local.yml /usr/local/kong/declarative/kong.yml

kong
