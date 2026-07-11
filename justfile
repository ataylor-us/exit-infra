install:
    ansible-galaxy install -r requirements.yml
    pre-commit install

default: install
    ansible-playbook master.yml

check: install
    ansible-playbook --check --skip-tags tailscale master.yml
