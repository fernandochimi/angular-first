PROJECT_ID := angular-first
DCMP = docker-compose
SYSTEMJS = systemjs.config.js

build:
		${DCMP} build

start:
		${DCMP} up -d

stop:
		${DCMP} stop

clean:
		find . -name "*.map" -exec rm -rf {} \;
		rm -rf *.log

execute:
		sudo chown -R ${USER}:${USER} .
		${MAKE} clean
		${MAKE} build
		${MAKE} start

