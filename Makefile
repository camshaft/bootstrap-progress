
build: components bootstrap-progress.css
	@component build --dev

bootstrap-progress.css: bootstrap-progress.less
	node_modules/.bin/recess bootstrap-progress.less --compile > bootstrap-progress.css

components: component.json
	@component install --dev

clean:
	rm -fr build components bootstrap-progress.css

.PHONY: clean
