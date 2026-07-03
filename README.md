# Personal Website

Source for my personal site. Static HTML and CSS, no build step and no dependencies.

## Structure

```
.
├── index.html              # the page
├── assets/
│   └── css/style.css       # styles (auto dark/light)
├── Dockerfile              # nginx image that serves the site
├── nginx.conf              # nginx server config (headers, caching, gzip)
├── .dockerignore
├── .github/workflows/docker.yml  # builds and pushes the image to GHCR
└── README.md
```

## Run locally

Open `index.html` directly, or serve the folder:

```sh
python3 -m http.server 8000
# http://localhost:8000
```

## Run with Docker

Build and run the nginx image:

```sh
docker build -t khider-site .
docker run --rm -p 8080:80 khider-site
# http://localhost:8080
```

The image is built from `nginx:1.27-alpine` and serves the static files with
security headers, gzip, and long-lived caching for `/assets/`.

## Deploy

Serve the repository root with any static web server. Nothing to build.

A GitHub Actions workflow (`.github/workflows/docker.yml`) builds the Docker
image and pushes it to the GitHub Container Registry (GHCR) on every push to
`main`. Pull and run the published image:

```sh
docker run --rm -p 8080:80 ghcr.io/0x746172656b/khider.fr:latest
```
