# make test TEST=otr
TEST=*

# make build TASK=otr
TASK=default

test:
	./node_modules/.bin/mocha -G -R spec test/spec/unit/$(TEST).js

build:
	./node_modules/.bin/grunt $(TASK)

.PHONY: test build
