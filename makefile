url=""

deploy:
	bin/deploy.sh

get:
	bin/get.py ${url}

unget:
	bin/unget.sh ${url}

update:
	@git pull
	@git submodule init
	@git submodule update

upgrade:
	@git submodule foreach git checkout master
	@git submodule foreach git pull origin master
	@git add pack/default
	@git commit -m "[auto] Upgrade packages"
