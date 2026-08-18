# nojs-radio-select

A beautiful, highly customizable and easily themable "custom select" made with radio inputs, **100% JS free!** 😎

Built with plain HTML and [Stylus](https://stylus-lang.com/), bundled with [Vite](https://vitejs.dev/).

## Demo

The `index.html` page showcases the component along with two alternative themes.

## Prerequisites

- [Docker](https://www.docker.com/)

That's it — Node.js and npm run **inside** Docker with pinned versions, so nothing needs to be installed locally.

## Getting started

Start the dev server (with hot reload) using the `dev` build stage:

```sh
docker build --target dev -t nojs-radio-select:dev .
docker run --rm -p 5173:5173 -v "$(pwd)":/app -v /app/node_modules nojs-radio-select:dev
```

The site will be available at [http://localhost:5173](http://localhost:5173), and edits to the
source files on your machine will trigger a hot reload inside the container.

Build for production (output goes to `dist/` inside the `build` stage):

```sh
docker build --target build -t nojs-radio-select:build .
docker create --name nojs-radio-select-build nojs-radio-select:build
docker cp nojs-radio-select-build:/app/dist ./dist
docker rm nojs-radio-select-build
```

## Running with Docker

Build the production image (uses the `build` stage internally, then serves the result with nginx):

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
Dockerfile                Multi-stage build: locked dev/build environment + nginx production serve
```
