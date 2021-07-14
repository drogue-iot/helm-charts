all: update

.PHONY: update
update:
	for i in common core examples twin; do \
		helm dep up charts/drogue-cloud-$$i; \
	done

.PHONY: test
test:
	ct lint --config .github/ct.yaml --all
