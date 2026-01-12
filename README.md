# Deepak Sharma — Personal Website

This repository contains my personal website built with the al-folio Jekyll theme. It hosts my About, Projects, Blog, and Publications pages and deploys via GitHub Pages.

## Live Site

- https://deepaks4077.github.io

## Local Development

1. Install dependencies: `bundle install`
2. Run the site: `bundle exec jekyll serve`
3. Open: http://localhost:4000

## Content Locations

- About page: `_pages/about.md`
- Blog posts: `_posts/YYYY-MM-DD-title.md`
- Projects: `_projects/*.md`
- Publications: `_bibliography/papers.bib`
- Social links: `_data/socials.yml`
- Site config: `_config.yml`

## Notes

- `baseurl` is empty so the site serves from `/`.
- The publication author list underlines my name and hides middle authors behind “more authors”.
- Preferred collaborators can be shown by adding `visible_authors={First Last; Another Name}` to a bib entry.

## Deployment

GitHub Actions deploys `main` to GitHub Pages. Avoid committing generated `_site/` output.
