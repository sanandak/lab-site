# The main PSICE external website

(this was copied from the RPAL setup)

This repository holds the source and generated files for the lab's primary world-facing website.
All lab members are encouraged to modify the sections of the site relevant to themselves and their
projects in order to keep things up to date. This document will serve as a quick guide to using the
site.


## Dependencies 

You will need to install a few small dependencies before working with the site:

- [Hugo](https://gohugo.io) is a fast static site generator, which we used to make the site.
- Some sort of text editor (to edit the site's files)
- `rsync` or similar; something with which to upload the generated files (N.B. We're hoping to
  make an automated deploy process soon, which would obviate this requirement)
- Node.JS and [Yarn](https://github.com/yarnpkg/yarn) **iff** you intend to edit the site's SCSS.
- [pandoc-citeproc](http://pandoc.org/installing.html) **iff** you intend to edit the citations
  listed in the research section of the site.


## File organization

With few exceptions (only one notable), you should only ever have to modify files in the `content/`
or `static/img/` directories. `static/img/` is just for images; `content/` is for all .md files. If
you are changing the citations on the "Research" page, you will also need to edit files in
`publications/` and `data/`.

## Building the site

Run `hugo` in the project root. To preview changes, run `hugo server` in the project root, and go
to `http://localhost:1313`. If you've modified the theme's SCSS, run `yarn run build` in the theme
root before running `hugo`.

## Deploying the site

Copy the contents of the `public/` directory to the `htdocs` folder for `rpal.cs.cornell.edu` on
`courses2.cit.cornell.edu`. Generally, I run `rsync -r public/*
<netid>@courses2.cit.cornell.edu:coursewww/rpal.cs.cornell.edu/htdocs/` for this.

## Basic editing

To edit existing content on the site, simply find the corresponding .md file in `content/` (which
can typically be done by following the directory structure, as it directly mirrors the main site
in most cases), and edit its content using Markdown. When you have finished, rebuild the site, and
deploy.

## Creating new content

Run `hugo new <path>/<to>/<content.md>`, where you can figure out the correct path to where your
.md file should be by looking at the organization of the `content/` directory (e.g. New news items
should go in `content/news/<item_title>.md`, new people descriptions should go in
`content/people/<name>.md`, etc.) When you're making a new item of a given category, look at the
top of another file in that category to see if there are any special metadata fields to be aware of
(e.g. the type and image fields for items in `content/people/`). Once you've created the correct
file, follow the procedures in "Basic editing", above.

## Editing citations

The process for editing citations is slightly different. Given a BibTeX file, you will need to run
`pandoc-citeproc --bib2yaml <BibTex File>.bib > pubs.yaml` in the `data/` directory. Then rebuild
and redeploy the site.

## Questions or issues

Please contact Wil.
