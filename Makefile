HEADER_SOURCE := boot_protocol-header.adoc
PDF_RESULT := EFI_RISCV_BOOT_PROTOCOL.pdf

all: build

build:

	@echo "Building asciidoc"
	asciidoctor-pdf \
    --attribute=mathematical-format=svg \
    --attribute=pdf-fontsdir=docs-resources/fonts \
    --attribute=pdf-style=docs-resources/themes/riscv-pdf.yml \
    --failure-level=ERROR \
    --require=asciidoctor-bibtex \
    --require=asciidoctor-diagram \
    --require=asciidoctor-mathematical \
    --out-file=$(PDF_RESULT) \
    $(HEADER_SOURCE)

clean:
	rm $(PDF_RESULT)
