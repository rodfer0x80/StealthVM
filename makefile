.PHONY: run
run:
	scripts/run.sh

.PHONY: build
build: 
	scripts/kernel_modules.sh "on"

.PHONY: clean
clean:
	scripts/kernel_modules.sh "off"
