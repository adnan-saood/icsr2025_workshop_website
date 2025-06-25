# Jekyll Docker Dev Environment - Saood's Personal Website

## 🚀 How to Use

### 1. Build the Jekyll site
```bash
docker exec -it jekyll_dev jekyll build
```

### 2. Serve the site locally
```bash
docker exec -it jekyll_dev jekyll serve --host 0.0.0.0
```

Then open [http://localhost:4000](http://localhost:4000) in your Windows browser.

### 3. Stop the container
```bash
docker stop jekyll_dev
```

### 4. Restart the container
```bash
docker start jekyll_dev
```
