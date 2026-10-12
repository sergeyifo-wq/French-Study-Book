# French Study Book - Complete Self-Study Textbook

A comprehensive French self-study textbook covering CEFR levels A1 through C2, delivered as a downloadable PDF.

## Overview

This project creates a complete, professionally designed French language textbook that takes learners from absolute beginner (A1) to near-native proficiency (C2). The book is designed for independent study and includes:

- **6 complete CEFR levels** (A1, A2, B1, B2, C1, C2)
- **55+ comprehensive units** with dialogues, vocabulary, grammar, exercises
- **Integrated cultural and historical content** woven into language learning
- **Original mascot (Amélie)** - a friendly French learning companion
- **Professional visual design** with French-inspired aesthetic
- **Complete answer keys** for all exercises
- **Reference sections** (grammar index, glossary, verb tables, pronunciation guide)
- **Study guides** with learning schedules and strategies

## Project Structure

```
French-Study-Book/
├── content/                    # Content files
│   ├── a1/                    # A1 Level units
│   ├── a2/                    # A2 Level units
│   ├── b1/                    # B1 Level units
│   ├── b2/                    # B2 Level units
│   ├── c1/                    # C1 Level units
│   ├── c2/                    # C2 Level units
│   └── reference/             # Reference material
│       ├── grammar/           # Grammar explanations
│       ├── glossary/         # Vocabulary glossary
│       ├── verbs/             # Verb conjugation tables
│       └── pronunciation/    # Pronunciation guide
│
├── assets/                    # Visual and font assets
│   └── svg/                   # SVG illustrations
│       ├── mascot/           # Mascot illustrations
│       └── icons/            # Icon illustrations
│
├── src/                       # LaTeX source files
│   ├── preamble.tex           # LaTeX preamble
│   ├── main.tex               # Main document
│   └── *.tex                  # Additional LaTeX files
│
├── build/                     # Build directory (generated)
├── output/                    # Output directory
│   └── french_study_book.pdf  # Final PDF (generated)
│
├── Makefile                   # Build automation
├── PROJECT_PLAN.md            # Project plan and structure
└── README.md                  # This file
```

## Mascot: Amélie

Amélie is your French learning companion throughout the book. She appears in three main poses:

- **Welcome Pose**: Introducing new topics and units
- **Explaining Pose**: Clarifying grammar points and tricky concepts
- **Encouraging Pose**: Celebrating progress and offering motivation

All mascot illustrations are created as SVG files for crisp, scalable graphics.

## Requirements

### For Building the PDF

- **XeLaTeX** (recommended for font embedding)
- **TeX Live** or **MiKTeX** distribution
- **Required LaTeX packages**:
  - fontspec
  - babel (French)
  - hyperref
  - geometry
  - titlesec
  - titletoc
  - fancyhdr
  - tcolorbox
  - svg
  - microtype
  - enumitem
  - booktabs
  - longtable
  - array
  - glossaries
  - makeidx

### Fonts

The book uses the following fonts (included in most TeX distributions):
- **Linux Libertine O** - Main text (serif)
- **Playfair Display** - Headings (elegant serif)
- **Source Sans Pro** - Code/examples (clean sans-serif)

## Building the PDF

### Quick Start

```bash
# Clone the repository
git clone https://github.com/sergeyifo-wq/French-Study-Book.git
cd French-Study-Book

# Build the PDF (requires XeLaTeX)
make all

# View the PDF
make view
```

### Build Options

```bash
make all          # Full build (3 passes for references)
make quick        # Quick build (single pass)
make clean        # Clean all build files
make rebuild      # Clean and rebuild from scratch
make check        # Check dependencies
make view         # Build and open PDF
```

### Manual Compilation

If you don't have `make`, you can compile manually:

```bash
# Create build directory
mkdir -p build
cd build

# First pass
xelatex -interaction=nonstopmode ../src/main.tex

# Second pass (resolve references)
xelatex -interaction=nonstopmode ../src/main.tex

# Third pass (final)
xelatex -interaction=nonstopmode ../src/main.tex

# PDF will be in build/french_study_book.pdf
```

## Content Structure

### Level A1 (Beginner) - 9 Units
1. Introduction and Greetings
2. Numbers and Alphabet
3. Colors and Shapes
4. Family and Friends
5. House and Objects
6. Food and Drinks
7. Clothing and Fashion
8. Hobbies and Free Time
9. Daily Routines

### Level A2 (Elementary) - 10 Units
1. Travel and Transport
2. Hotel and Restaurant
3. Shopping
4. Directions and Places
5. Weather and Seasons
6. Time and Dates
7. Work and Professions
8. Health and Body
9. Education and Learning
10. Technology and Communication

### Level B1 (Intermediate) - 10 Units
1. Past Experiences
2. Future Plans
3. Opinions and Arguments
4. Media and News
5. Arts and Culture
6. Society and Traditions
7. Environment and Nature
8. Science and Technology
9. Global Issues
10. Personal Development

### Level B2 (Upper Intermediate) - 10 Units
1. Advanced Conversation
2. Professional Communication
3. Literary Analysis
4. Current Affairs
5. Philosophical Discussions
6. Business French
7. Academic Writing
8. Cultural Critique
9. Debates and Discussions
10. Advanced Grammar

### Level C1 (Advanced) - 8 Units
1. Advanced Reading
2. Nuanced Writing
3. Complex Grammar
4. Specialized Vocabulary
5. Literary French
6. Professional Presentations
7. Cultural Analysis
8. Advanced Translation

### Level C2 (Proficiency) - 8 Units
1. Mastery of All Skills
2. Specialized Fields
3. Advanced Literature
4. Professional Mastery
5. Cultural Expertise
6. Advanced Translation
7. Creative Writing
8. Comprehensive Review

## Design Features

### Color Palette
- **French Blue**: #0055A4 (primary)
- **French Red**: #E8112D (secondary)
- **French Gold**: #FFD700 (accent)
- **Cream**: #F5F5DC (background)
- **Dark Gray**: #2C2C2C (text)

### Typography
- **Main Text**: 11pt Linux Libertine O
- **Headings**: Playfair Display
- **Line Spacing**: 1.5 for readability
- **Page Size**: A4 (210mm × 297mm)
- **Margins**: 25mm inner, 20mm outer, 25mm top/bottom

### Layout Elements
- Custom chapter and section styling
- Color-coded boxes for different content types:
  - Mascot boxes (cream background, blue border)
  - Dialogue boxes (white background, red border)
  - Vocabulary boxes (white background, gold border)
  - Exercise boxes (white background, blue border)
  - Note boxes (cream background, red border)
  - Cultural note boxes (white background, gold border)

## Contributing

Contributions are welcome! Please follow these guidelines:

1. **Content**: Ensure all French is accurate and culturally appropriate
2. **Design**: Maintain the established visual style and color palette
3. **Structure**: Follow the existing file and directory structure
4. **Illustrations**: Use SVG format for all new illustrations

## License

This project is licensed under [Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License](https://creativecommons.org/licenses/by-nc-sa/4.0/).

You are free to:
- Share — copy and redistribute the material in any medium or format
- Adapt — remix, transform, and build upon the material

Under the following terms:
- Attribution — You must give appropriate credit
- NonCommercial — You may not use the material for commercial purposes
- ShareAlike — If you remix, transform, or build upon the material, you must distribute your contributions under the same license

## Contact

For questions or feedback, please open an issue on the GitHub repository.

## Status

This project is currently in **active development**. The structure is established, and content is being added progressively.

### Current Progress

- [x] Repository created
- [x] Project structure established
- [x] LaTeX preamble created
- [x] Main document skeleton created
- [x] Mascot SVG illustrations created (3 poses)
- [x] Makefile build system created
- [x] Sample A1 units (3 complete units)
- [ ] Remaining A1 units (6 units)
- [ ] A2 level units (10 units)
- [ ] B1 level units (10 units)
- [ ] B2 level units (10 units)
- [ ] C1 level units (8 units)
- [ ] C2 level units (8 units)
- [ ] Reference sections
- [ ] Study guide
- [ ] Final PDF generation
- [ ] Quality assurance

## Next Steps

1. Complete all A1 level units
2. Create additional mascot poses and scene illustrations
3. Develop A2 level content
4. Continue through all levels
5. Create reference sections
6. Generate and verify final PDF

---

**Bon courage avec vos études de français!** (Good luck with your French studies!)

**Amélie - Votre compagne d'apprentissage du français** (Your French learning companion)
