url=""

.PHONY: all deploy get unget update upgrade
all: update deploy

deploy:
	bin/deploy.sh

get:
	bin/get.py ${url}

unget:
	bin/unget.sh ${url}

update:
	@git pull --rebase
	@git submodule init
	@git submodule update

upgrade:
	@git submodule foreach git checkout master
	@git submodule foreach git pull
	@git add pack/default
	@git commit -m "[auto] Upgrade packages"

clean:
	git clean -ffd
