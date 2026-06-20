# Personal Website

Source for my personal site. Static HTML and CSS, no build step and no dependencies.

## Structure

```
.
├── index.html              # the page
├── assets/
│   ├── css/style.css       # styles (auto dark/light)
│   └── cv/                 # CV PDF goes here (tarek-khider-cv.pdf)
└── README.md
```

## Run locally

Open `index.html` directly, or serve the folder:

```sh
python3 -m http.server 8000
# http://localhost:8000
```

## Deploy

Serve the repository root with any static web server. Nothing to build.
