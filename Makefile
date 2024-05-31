up: .env
	ansible-playbook site.yml -i inventories/hosts

install-requirements:
	ansible-galaxy install -r roles/requirements.yml

a: playbook

playbook:
	ansible-playbook -i inventories/hosts $(filter-out $@,$(MAKECMDGOALS))

role:
	ansible $(filter-out $@,$(MAKECMDGOALS))

%:
	@:
