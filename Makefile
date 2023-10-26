.PHONY: default
default: build ;

rm:
	rm -f docs/index.md

build: rm
	touch docs/index.md; cat 0*.md > docs/index.md