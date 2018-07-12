#!/bin/bash
#

sudo docker run --rm -it --name ansible --hostname ansible.example.com --volume /home/user/example.com/images/ansible/playbooks:/home/user/playbooks --volume /home/user/example.com/images/ansible/inventory:/home/user/inventory --volume /home/user/example.com/images/ansible/roles:/home/user/roles  --volume /home/user/example.com/images/ansible/ansible.cfg:/home/user/ansible.cfg -v /home/user/.ssh/:/home/user/.ssh/ --volume /home/user/example.com/images/ansible/files:/home/user/files examplecom/image:ansible "$@"

