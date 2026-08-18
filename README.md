# nojs-radio-select

A beautiful, highly customizable and easily themable "custom select" made with radio inputs, **100% JS free!** 😎

Built with plain HTML and [Stylus](https://stylus-lang.com/), bundled with [Vite](https://vitejs.dev/).

## Demo

The `index.html` page showcases the component along with two alternative themes.

## Prerequisites

- [Node.js](https://nodejs.org/) 20+
- npm (comes with Node.js)

## Getting started

Install dependencies:

```sh
npm install
```

Start the dev server (with hot reload):

```sh
npm run dev
```

Build for production (output goes to `dist/`):

```sh
npm run build
```

Preview the production build locally:

```sh
npm run preview
```

## Running with Docker

Build the image:

```sh
docker build -t nojs-radio-select .
```

Run the container:

```sh
docker run --rm -p 8080:80 nojs-radio-select
```

The site will be available at [http://localhost:8080](http://localhost:8080).

## Deployment

Pushes to the `main` branch automatically build the project and deploy it to
[GitHub Pages](https://pages.github.com/) via the workflow in
`.github/workflows/deploy.yml`.

## Project structure

```
index.html                Main page markup
main.styl                 Entry stylesheet
src/stylus/               Stylus partials (variables, themes, component styles)
vite.config.js            Vite build configuration
Dockerfile                Container build for serving the production build
```
