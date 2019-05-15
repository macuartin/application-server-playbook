
# Application Server Playbook

[![N|Solid](https://digitalfactory.scotiabank.com/assets/6ab770fc2aa46c22481ccd4e669f38c9.svg)](https://digitalfactory.scotiabank.com/)

## Run Playbook

Run the playbook with the following command.

```sh
ansible-playbook -i ./inventories/hosts main.yml --extra-vars "host=all" --tags "full"
```

For more information about Ansible Playbooks See [Run Your First Command and Playbook](https://docs.ansible.com/ansible/latest/network/getting_started/first_playbook.html#run-your-first-command-and-playbook)

### Available hosts

| Hosts | Description |
| ------ | ------ |
| all | Run playbook for all hosts in inventory file. |
| pse | Run playbook for PSE hosts in inventory file. |
| auth | Run playbook for Auth hosts in inventory file. |
| prd | Run playbook for Production hosts in inventory file. |
| ctg | Run playbook for Contingency hosts in inventory file. |

For more information about the host, check de inventory in /inventories/hosts

### Available Tags

| Hosts | Description |
| ------ | ------ |
| full | Run all tasks in Playbook. |
| filesystem | Run filesystem role tasks. |
| java | Run java role tasks. |
| logstash | Run logstash role tasks. |
| nginx | Run nginx role tasks. |

If you want to exempt some role in the playbook, you can use the parameter --skip-tags. E.g:

The command below runs the entire playbook minus the tasks in the java role

```sh
ansible-playbook -i ./inventories/hosts main.yml --extra-vars "host=all" --skip-tags "java"
```

For more information about the roles task, check /roles

### Vars

For the correct use of this playbook please define all the variables you need in the file /vars/main.yml
