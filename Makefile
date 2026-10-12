# French Study Book - Makefile
# Build system for compiling the LaTeX document to PDF

# Configuration
TARGET = french_study_book
MAIN_TEX = src/main.tex
BUILD_DIR = build
OUTPUT_DIR = output
OUTPUT_PDF = $(OUTPUT_DIR)/$(TARGET).pdf

# Tools
LATEX = xelatex
BIBTEX = bibtex
MAKEINDEX = makeindex
GLOSSARIES = makeglossaries

# Flags
LATEX_FLAGS = -interaction=nonstopmode -halt-on-error

# Directories
SRC_DIR = src
CONTENT_DIR = content
ASSETS_DIR = content/assets/svg

.PHONY: all clean build quick

all: $(OUTPUT_PDF)

# Main PDF target
$(OUTPUT_PDF): $(MAIN_TEX) $(wildcard $(SRC_DIR)/*.tex) $(wildcard $(CONTENT_DIR)/**/*.tex) $(wildcard $(ASSETS_DIR)/*.svg)
	@echo "Building French Study Book PDF..."
	@mkdir -p $(BUILD_DIR)
	@mkdir -p $(OUTPUT_DIR)
	# First pass - generate auxiliary files
	cd $(BUILD_DIR) && $(LATEX) $(LATEX_FLAGS) ../$(MAIN_TEX)
	# Second pass - resolve references
	cd $(BUILD_DIR) && $(LATEX) $(LATEX_FLAGS) ../$(MAIN_TEX)
	# Third pass - final compilation
	cd $(BUILD_DIR) && $(LATEX) $(LATEX_FLAGS) ../$(MAIN_TEX)
	# Move final PDF to output directory
	@mv $(BUILD_DIR)/$(TARGET).pdf $(OUTPUT_PDF)
	@echo "PDF generated: $(OUTPUT_PDF)"

# Quick build (single pass)
quick: 
	@echo "Quick build - single pass..."
	@mkdir -p $(BUILD_DIR)
	@mkdir -p $(OUTPUT_DIR)
	cd $(BUILD_DIR) && $(LATEX) $(LATEX_FLAGS) ../$(MAIN_TEX)
	@mv $(BUILD_DIR)/$(TARGET).pdf $(OUTPUT_PDF) 2>/dev/null || true
	@echo "Quick build complete: $(OUTPUT_PDF)"

# Clean build
clean:
	@echo "Cleaning build files..."
	-rm -rf $(BUILD_DIR)/*
	-rm -rf $(OUTPUT_DIR)/*
	-rm -f *.aux *.log *.out *.toc *.lof *.lot *.idx *.ilg *.glo *.gls
	@echo "Clean complete"

# Rebuild from scratch
rebuild: clean all

# View PDF
view: $(OUTPUT_PDF)
	@echo "Opening PDF: $(OUTPUT_PDF)"
	xdg-open $(OUTPUT_PDF) 2>/dev/null || open $(OUTPUT_PDF) 2>/dev/null || echo "Please open $(OUTPUT_PDF) manually"

# Check dependencies
check:
	@echo "Checking for required tools..."
	@which $(LATEX) >/dev/null 2>&1 || echo "WARNING: xelatex not found in PATH"
	@which $(BIBTEX) >/dev/null 2>&1 || echo "WARNING: bibtex not found in PATH"
	@echo "Checking SVG files..."
	@ls $(ASSETS_DIR)/*.svg 2>/dev/null || echo "WARNING: No SVG files found in $(ASSETS_DIR)"
	@echo "Dependency check complete"

# Generate glossary (if needed)
glossary:
	@echo "Generating glossary..."
	cd $(BUILD_DIR) && $(MAKEINDEX) -s ../src/glossary.ist -t $(TARGET).glg -o $(TARGET).gls $(TARGET).glo
	@echo "Glossary generated"

# Install fonts (Ubuntu/Debian)
install-fonts:
	@echo "Installing required fonts..."
	@sudo apt-get update >/dev/null 2>&1
	@sudo apt-get install -y fonts-linuxlibertine fonts-playfair fonts-source-sans-pro 2>/dev/null || echo "Font installation requires sudo privileges"
	@echo "Fonts installation attempted"

# Help
help:
	@echo "French Study Book Build System"
	@echo ""
	@echo "Targets:"
	@echo "  make all          - Build complete PDF (3 passes)"
	@echo "  make quick        - Quick build (single pass)"
	@echo "  make clean        - Clean all build files"
	@echo "  make rebuild      - Clean and rebuild"
	@echo "  make view         - Build and open PDF"
	@echo "  make check        - Check dependencies"
	@echo "  make glossary     - Generate glossary"
	@echo "  make install-fonts - Install required fonts (sudo)"
	@echo ""
	@echo "Note: Requires XeLaTeX for font embedding"
