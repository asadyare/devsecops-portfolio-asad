# Diagrams

This folder contains the DevSecOps Architecture Pack and related assets.

## Contents

- **DevSecOps_Architecture_Pack.md** – Source for the architecture pack (recommended to read or edit).
- **DevSecOps_Architecture_Pack.pdf** – Printable PDF; generated from the Markdown (see below).

## Generating the PDF from Markdown

### Option 1: Pandoc (recommended)

Install [Pandoc](https://pandoc.org/installing.html), then run from this folder:

```bash
pandoc DevSecOps_Architecture_Pack.md -o DevSecOps_Architecture_Pack.pdf --pdf-engine=xelatex -V geometry:margin=1in
```

If you don’t have a LaTeX engine, use a HTML intermediate and then print to PDF:

```bash
pandoc DevSecOps_Architecture_Pack.md -o DevSecOps_Architecture_Pack.html --standalone --metadata title="DevSecOps Architecture Pack"
# Open the HTML in a browser and use Print → Save as PDF
```

### Option 2: VS Code

Install the “Markdown PDF” extension, open `DevSecOps_Architecture_Pack.md`, run “Markdown PDF: Export (pdf)” from the command palette.

### Option 3: GitHub / Mermaid

The Markdown uses Mermaid diagrams. GitHub renders them in the `.md` view. For PDF, use Pandoc with a Mermaid filter, or export the diagrams as images and reference them in the document.

---

After regenerating the PDF, commit the updated `DevSecOps_Architecture_Pack.pdf` so the link from the main README and the portfolio site stays valid.
