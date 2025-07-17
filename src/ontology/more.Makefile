## Customize Makefile settings for more
## 
## If you need to customize your Makefile, make
## changes here rather than in the main Makefile


$(COMPONENTSDIR)/template.owl: $(COMPONENTSDIR)/template.tsv $(SRC)
	if [ $(COMP) = true ]; then $(ROBOT) merge -i $(SRC) template --template $< --prefix "MORE: https://example.org/more/MORE_" --output $@ && \
	$(ROBOT) annotate --input $@ --ontology-iri $(ONTBASE)/$@ -o $@; fi
