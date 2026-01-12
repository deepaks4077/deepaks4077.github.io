# AGENTS.md

## Project Overview
- Personal website for Deepak Sharma built with Jekyll using the al-folio theme.
- Hosted via GitHub Pages with automated deployment from `main`.

## Setup
### Prerequisites
- Ruby + Bundler (for Jekyll builds)
- Docker + Docker Compose (recommended local dev)
- Node.js (optional, for Prettier)

### Install & Run
- Install Ruby dependencies: `bundle install`
- Local dev server: `bundle exec jekyll serve` (http://localhost:4000)
- Build site: `bundle exec jekyll build`
- Docker dev (recommended): `docker compose pull` then `docker compose up` (http://localhost:8080)

## Repo Structure
- `_config.yml`: main site configuration (URL, metadata, features)
- `_pages/`: top-level pages (about, blog, projects, publications)
- `_posts/`: blog posts (`YYYY-MM-DD-title.md`)
- `_projects/`: project pages
- `_news/`: announcements
- `_bibliography/`: publications (`papers.bib`, `preprints.bib`)
- `_data/`: structured data (`socials.yml`, `coauthors.yml`, etc.)
- `_layouts/`, `_includes/`: Liquid templates
- `_sass/`: theme styling
- `assets/`: images, JS, CSS, PDFs
- `bin/`: helper scripts (e.g., `bin/deploy`)

## Common Content Workflows
- Update site info + features in `_config.yml`
- About page content: `_pages/about.md`
- Blog posts: `_posts/YYYY-MM-DD-title.md`
- Projects: `_projects/*.md` or `_projects/*.markdown`
- Publications: update `_bibliography/papers.bib` or `_bibliography/preprints.bib`
- Social links: `_data/socials.yml`
- Coauthor metadata: `_data/coauthors.yml`

## Styling & Theme
- Global theme color: `_sass/_themes.scss`
- Layout + base styling: `_sass/_layout.scss`, `_sass/_base.scss`
- Main stylesheet entry: `assets/css/main.scss`

## Validation
- Prefer local preview (Docker or `jekyll serve`) before committing.
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