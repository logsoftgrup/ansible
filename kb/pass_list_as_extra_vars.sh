#!/bin/bash

ansible-playbook test2.yml -e "{ 'param': [ 'first', 'second' ] }"

#    - name: Print list
#      debug:
#        msg: "{{ item }}"
#      with_items: "{{ host_param }}"

