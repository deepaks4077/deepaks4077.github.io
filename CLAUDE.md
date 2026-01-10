# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a personal website for Deepak Sharma, an Applied Scientist at Microsoft. It is built with Jekyll, using the al-folio theme.

## Development Commands

### Building and Development
- **Build the site**: `./build.sh` or manually:
  ```bash
  jekyll clean
  jekyll build
  ```
- **Local development**: `jekyll serve` (serves locally at http://localhost:4000)
- **Install dependencies**: `bundle install`

### Key Build Files
- `Gemfile`: Ruby dependencies including Jekyll plugins
- `build.sh`: Main build script that cleans and builds the site
- `_config.yml`: Main Jekyll configuration

## Architecture and Structure

### Site Configuration (`_config.yml`)
- **Personal info**: Name, email, social links configured at the top
- **Collections**: Two main collections - `news` and `projects`
- **Plugins**: Uses Jekyll Scholar for bibliography, Jekyll Paginate for blog pagination, and other Jekyll plugins
- **Theme features**: Dark mode, MathJax support, image zoom, project categorization

### Content Structure
- `_pages/`: Main site pages (about.md, projects.md, publications.md)
- `_posts/`: Blog posts in markdown format
- `_projects/`: Individual project pages
- `_news/`: News/announcement items
- `_bibliography/`: BibTeX files for publications (papers.bib, preprints.bib)
- `_data/`: YAML data files (coauthors.yml)

### Layout System
- `_layouts/`: HTML templates (about.html, post.html, page.html, etc.)
- `_includes/`: Reusable components (header.html, footer.html, social.html, etc.)
- `_sass/`: SCSS stylesheets organized by component

### Assets
- `assets/css/main.scss`: Main stylesheet entry point
- `assets/js/`: JavaScript files for features like dark mode, zoom, masonry layout
- `assets/img/`: Images including profile photos and project screenshots
- `assets/pdf/`: PDF files for downloads

### Key Features
- **Bibliography integration**: Uses Jekyll Scholar plugin with BibTeX files
- **Dark mode**: Enabled with JavaScript toggle
- **Project showcase**: Categorized projects with image previews
- **News section**: Recent announcements and updates
- **Social integration**: Links to GitHub, Twitter, LinkedIn, Google Scholar
- **Math rendering**: MathJax support for mathematical expressions
- **Image zoom**: Medium-style image zoom on click

## Content Management

### Adding Content
- **New blog post**: Create `.md` file in `_posts/` with YAML front matter
- **New project**: Add `.markdown` file to `_projects/` directory
- **News items**: Add `.md` file to `_news/` directory
- **Publications**: Add entries to `_bibliography/papers.bib` or `_bibliography/preprints.bib`

### Configuration Notes
- Site uses `github.com/deepaks4077` as the GitHub username
- Scholar ID: `EGRYwWQAAAAJ`
- News items are limited to 5 recent items (`news_limit: 5`)
- Blog uses permalink structure `/blog/:year/:title/`

## Dependencies and Versions
The site uses specific versions of frontend libraries defined in `_config.yml`:
- Bootstrap 4.5.2
- FontAwesome 5.14.0
- jQuery 3.5.1
- MathJax 3.1.2

## Hosting
This site appears to be designed for GitHub Pages deployment, with CNAME file present for custom domain configuration.