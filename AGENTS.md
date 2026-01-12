# AGENTS.md

## Project Overview

- Personal website for Deepak Sharma built with Jekyll using the al-folio theme.
- Hosted via GitHub Pages with automated deployment from `main`.

## Setup

### Prerequisites

- Ruby + Bundler (for Jekyll builds)
- Docker + Docker Compose (optional local dev)
- Node.js (optional, for Prettier)

### Install & Run

- Install Ruby dependencies: `bundle install`
- Local dev server: `bundle exec jekyll serve` (http://localhost:4000)
- Build site: `bundle exec jekyll build`
- Docker dev: `docker compose pull` then `docker compose up` (http://localhost:8080)

## Repo Structure

- `_config.yml`: main site configuration (URL, metadata, features)
- `_pages/`: top-level pages (about, blog, projects, publications)
- `_posts/`: blog posts (`YYYY-MM-DD-title.md`)
- `_projects/`: project pages
- `_bibliography/`: publications (`papers.bib`, `preprints.bib`)
- `_data/`: structured data (`socials.yml`, `coauthors.yml`, etc.)
- `_layouts/`, `_includes/`: Liquid templates
- `_sass/`: theme styling
- `assets/`: images, JS, CSS, PDFs
- `bin/`: helper scripts (e.g., `bin/deploy`)

## Key Configuration

- `url` is `https://deepaks4077.github.io` and `baseurl` is empty (root served at `/`).
- Favicon uses `linkedinphoto.jpeg` via `icon:` in `_config.yml`.
- Global theme color set to red in `_sass/_themes.scss`.
- Blog title/description configured in `_config.yml` and the page title in `_pages/blog.md`.

## Common Content Workflows

- About page content: `_pages/about.md` (uses `subtitle:` in frontmatter).
- Blog posts: `_posts/YYYY-MM-DD-title.md` (only keep curated posts).
- Projects: `_projects/*.md`.
- Publications: update `_bibliography/papers.bib` or `_bibliography/preprints.bib`.
- Social links: `_data/socials.yml` and `*_username` fields in `_config.yml`.

## Publications Rendering

- Template: `_layouts/bib.liquid`.
- Author list shows all authors up to and including Deepak Sharma (underlined), hides middle authors behind “more authors”, and always shows the last author.
- Venue appears above the date; for workshop entries stored in `note`, the note is treated as the venue and the date appears below it.
- Spacing between title, authors, venue, and date is defined in `_pages/publications.md` via inline styles.

## Styling & Theme

- Global theme color: `_sass/_themes.scss`.
- Layout + base styling: `_sass/_layout.scss`, `_sass/_base.scss`.
- Main stylesheet entry: `assets/css/main.scss`.

## Validation

- Prefer local preview (`bundle exec jekyll serve`) before committing.
- Jekyll rebuilds automatically after edits; refresh browser to verify.
- Ensure YAML indentation is 2 spaces and BibTeX syntax stays valid.

## Deployment

- GitHub Actions deploys from `main` to `gh-pages`.
- Do not edit `gh-pages` or `_site/` directly.
- `bin/deploy` performs a manual build + deploy (destructive; use with care).
- `CNAME` controls the custom domain.

## Formatting

- Optional: `npx prettier . --write` (uses `package.json` devDependencies).

## Contribution Guardrails

- Avoid committing generated `_site/` or `vendor/` output.
- Keep `baseurl:` in `_config.yml` (empty is ok, do not delete).
- Do not add secrets or private keys.
- The Jupyter notebook plugin is not enabled; avoid notebook-specific tags unless re-enabled.
