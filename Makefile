SHELL=/bin/bash
MARKDOWN=main.md
PDF=main.pdf
SERVER=server
WORKSPACE=./workspace
HEADER=header.md
PAGES=title.md team.md all.md
FILEPATH=$(addprefix $(WORKSPACE)/, $(PAGES))

$(MARKDOWN): $(WORKSPACE)/$(HEADER) $(FILEPATH)
	cat $< > $@
	tail -n +7 -q $^ >> $@

$(PDF): $(MARKDOWN)
	marp $< -o $@

$(SERVER):
	marp --server --watch .

md: $(MARKDOWN)

pdf: $(PDF)

serve: $(SERVER)

all: clean $(MARKDOWN) $(PDF)

clean:
	rm -f $(MARKDOWN) $(PDF)

