NAME ?= aLn-vayu
DATE := $(shell date "+%Y%m%d-%H%M")
ZIP := $(NAME)-$(DATE).zip

EXCLUDE := Makefile *.git* *.jar* *placeholder* *.md*

normal: $(ZIP)

$(ZIP):
	@echo "Creating ZIP: $(ZIP)"
	@zip -r9 "$@" . -x $(EXCLUDE)
	@echo "Done."

clean:
	@rm -vf *.zip*
	@rm -vf *.gz-dtb*
	@rm -vf *.img*
	@rm -vf modules/vendor/lib/modules/*.ko
	@echo "Done."
