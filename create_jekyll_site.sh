#!/bin/bash

set -e

# === Configuration ===
PROJECT_NAME="icsr2025_workshop_site"
PROJECT_DIR="./$PROJECT_NAME"
CONTAINER_NAME="jekyll_dev"
IMAGE_NAME="jekyll/jekyll:latest"
HOST_PORT=4000
CONTAINER_PORT=4000

# === Create project directory ===
mkdir -p "$PROJECT_DIR"

# === Create README ===
cat << EOF > "$PROJECT_DIR/README.md"
# Jekyll Docker Dev Environment

## 🚀 How to Use

### 1. Build the Jekyll site
\`\`\`bash
docker exec -it $CONTAINER_NAME jekyll build
\`\`\`

### 2. Serve the site locally
\`\`\`bash
docker exec -it $CONTAINER_NAME jekyll serve --host 0.0.0.0
\`\`\`

Then open [http://localhost:$HOST_PORT](http://localhost:$HOST_PORT) in your Windows browser.

### 3. Stop the container
\`\`\`bash
docker stop $CONTAINER_NAME
\`\`\`

### 4. Restart the container
\`\`\`bash
docker start $CONTAINER_NAME
\`\`\`
EOF

# === Pull Docker Image ===
echo "📦 Pulling Docker image..."
docker pull $IMAGE_NAME

# === Remove existing container ===
if docker ps -a --format '{{.Names}}' | grep -Eq "^$CONTAINER_NAME\$"; then
    echo "♻️ Removing old container..."
    docker rm -f $CONTAINER_NAME
fi

# === Start the container ===
echo "🚀 Starting Jekyll Docker container..."
docker run -dit \
    --name $CONTAINER_NAME \
    -p $HOST_PORT:$CONTAINER_PORT \
    -v "$PROJECT_DIR":/srv/jekyll \
    -w /srv/jekyll \
    $IMAGE_NAME \
    bash

# === Install dependencies inside container ===
echo "📦 Installing site (if needed)..."
docker exec -it $CONTAINER_NAME bash -c "bundle install || (jekyll new . --force && bundle add webrick)"


# === Get WSL2 IP ===
WSL_IP=$(ip addr show eth0 | grep 'inet ' | awk '{print $2}' | cut -d/ -f1)
echo "🌐 WSL2 IP address is $WSL_IP"

# === Windows port forwarding (requires PowerShell) ===
echo "🔁 Setting up Windows port forwarding to allow access via localhost..."
powershell.exe -Command "Start-Process powershell -Verb runAs -ArgumentList 'netsh interface portproxy add v4tov4 listenport=$HOST_PORT listenaddress=127.0.0.1 connectport=$HOST_PORT connectaddress=$WSL_IP'"

# === Done ===
echo "✅ Setup complete!"
echo "📂 Project directory: $PROJECT_DIR"
echo "🌍 To serve your site, run inside WSL2:"
echo "    docker exec -it $CONTAINER_NAME jekyll serve --host 0.0.0.0"
echo "🖥️  Then open http://localhost:$HOST_PORT in your Windows browser"
