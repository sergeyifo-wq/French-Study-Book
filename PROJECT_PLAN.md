# French Study Book - Complete Production Plan

## Overview
A comprehensive French self-study textbook covering CEFR levels A1 through C2, delivered as a downloadable PDF.

## Repository Structure
```
French-Study-Book/
├── content/
│   ├── a1/              # A1 Level (Beginner) - 9 units
│   ├── a2/              # A2 Level (Elementary) - 10 units
│   ├── b1/              # B1 Level (Intermediate) - 10 units
│   ├── b2/              # B2 Level (Upper Intermediate) - 10 units
│   ├── c1/              # C1 Level (Advanced) - 8 units
│   ├── c2/              # C2 Level (Proficiency) - 8 units
│   └── reference/       # Grammar, glossary, verb tables
├── assets/
│   ├── svg/             # SVG illustrations (mascot, icons, scenes)
│   └── fonts/           # Embedded fonts
├── build/              # Compiled LaTeX and temporary files
├── src/                # LaTeX source files
├── Makefile            # Build automation
├── README.md
└── FINAL_PDF/          # Output directory
```

## Mascot Design
- **Name**: Amélie
- **Character**: Friendly French woman in her 30s, professional but approachable
- **Appearance**: Shoulder-length brown hair, stylish but practical clothing (blouse, scarf), welcoming smile
- **Role**: Learning companion, explains concepts, offers encouragement
- **Visual Style**: Clean SVG vector art, consistent color palette matching French aesthetic

## Color Palette
- Primary: #0055A4 (French Blue)
- Secondary: #E8112D (French Red)
- Accent: #FFD700 (Gold)
- Neutral: #F5F5DC (Cream)
- Text: #2C2C2C (Dark Gray)

## Typography
- Main Text: Linux Libertine (serif, elegant)
- Headings: Playfair Display (elegant serif)
- Code/Examples: Source Sans Pro (clean sans-serif)

## Production Stages

### Stage 1: Content Creation (Current)
- [ ] Create all 55 units across 6 levels
- [ ] Write dialogues, explanations, exercises
- [ ] Create answer keys
- [ ] Integrate culture and history naturally

### Stage 2: Visual Design
- [ ] Design mascot (Amélie) in multiple poses
- [ ] Create scene illustrations
- [ ] Design icons and decorative elements
- [ ] Establish layout templates

### Stage 3: Reference Material
- [ ] Grammar index
- [ ] Comprehensive glossary
- [ ] Verb conjugation tables
- [ ] Pronunciation guide

### Stage 4: Study Guide
- [ ] Learning schedules (intensive, regular, casual)
- [ ] Study tips
- [ ] Assessment guides
- [ ] Resource recommendations

### Stage 5: LaTeX Typesetting
- [ ] Create main.tex with all includes
- [ ] Design cover
- [ ] Format all content
- [ ] Add TOC, bookmarks, running headers

### Stage 6: PDF Generation
- [ ] Compile with XeLaTeX (font embedding)
- [ ] Verify all pages
- [ ] Check links and bookmarks
- [ ] Final quality assurance

### Stage 7: Delivery
- [ ] Upload PDF to repository
- [ ] Create release
- [ ] Document contents and checks

## File Naming Conventions
- Chapters: `a1_01_introduction.tex`, `a1_02_numbers.tex`, etc.
- SVG files: `mascot_welcome.svg`, `mascot_explaining.svg`, `scene_market.svg`, etc.
- Reference: `grammar_a1.tex`, `glossary.tex`, `verbs_present.tex`, etc.

## Target Specifications
- **Page Size**: A4 (210mm x 297mm)
- **Margins**: 25mm inner, 20mm outer, 25mm top, 25mm bottom
- **Font Size**: 11pt main text, 14pt headings
- **Line Spacing**: 1.5 for readability
- **PDF Version**: 1.7 for compatibility

## Quality Checklist
- [ ] All 6 levels complete with multiple units each
- [ ] All exercises have answer keys
- [ ] All illustrations created and embedded
- [ ] Cultural/historical accuracy verified
- [ ] Language accuracy verified
- [ ] PDF renders correctly on multiple viewers
- [ ] All text selectable and searchable
- [ ] No overlapping elements
- [ ] No clipped text
- [ ] Consistent formatting throughout
- [ ] Working TOC and bookmarks
- [ ] Correct page numbering
