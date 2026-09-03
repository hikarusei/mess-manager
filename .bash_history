npm install -g firebase-tools
firebase login --no-localhost
mkdir public
mv mess-manager.html public/index.html
ls
mv mess-manager-29.html public/index.html
firebase init hosting
firebase deploy --only hosting
cd ~
git init
git add public firebase.json .firebaserc .gitignore
git commit -m "Initial commit"enter
git config --global user.name "hikarusei"
git commit -m "Initial commit"
git config --global user.email "hikarukurosei@gmail.com"
git commit -m "Initial commit"
git remote add origin https://github.com/hikarusei/mess-manager.git
git branch -M main
git push -u origin main
git remote set-url origin https://hikarusei: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@github.com/hikarusei/mess-manager.git
git push -u origin main
cp icon-192.png icon-512.png manifest.json public/
cp mess-manager.html public/index.html
firebase deploy --only hosting
ls
cp mess-manager-15.html public/index.html
firebase deploy --only hosting
git add public
git commit -m "Add PWA manifest and icons"
git push
npm install -g @bubblewrap/cli
bubblewrap init --manifest=https://mess-manager-v1.web.app/manifest.json
bubblewrap build
keytool -list -v -keystore /home/hikarukurosei/android.keystore -alias android
mkdir -p public/.well-known
cat > public/.well-known/assetlinks.json << 'EOF'
[{
  "relation": ["delegate_permission/common.handle_all_urls"],
  "target": {
    "namespace": "android_app",
    "package_name": "app.web.mess_manager_v1.twa",
    "sha256_cert_fingerprints": ["76:3D:14:CC:CB:3C:4E:EC:4D:20:B9:5F:F5:EB:D1:58:EA:E3:F1:59:EC:90:86:39:58:06:28:86:46:E9:AF:E8"]
  }
}]
EOF

firebase deploy --only hosting
cat twa-manifest.json
grep -i '"host"' twa-manifest.json
sed -i 's/"host": "y"/"host": "mess-manager-v1.web.app"/' twa-manifest.json
grep host twa-manifest.json
bubblewrap build
keytool -list -v -keystore ~/android.keystore -alias android
cat ~/mess-manager-v1/twa-manifest.json | grep applicationId
cat ~/twa-manifest.json | grep applicationId
ls -la
cat ~/twa-manifest.json
cat ~/twa-manifest.json | grep packageId
mkdir -p ~/public/.well-known && cat > ~/public/.well-known/assetlinks.json << 'EOF'
[{
  "relation": ["delegate_permission/common.handle_all_urls"],
  "target": {
    "namespace": "android_app",
    "package_name": "app.web.mess_manager_v1.twa",
    "sha256_cert_fingerprints": ["76:3D:14:CC:CB:3C:4E:EC:4D:20:B9:5F:F5:EB:D1:58:EA:E3:F1:59:EC:90:86:39:58:06:28:86:46:E9:AF:E8"]
  }
}]
EOF

firebase deploy --only hosting
git remote set-url origin https://hikarusei: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@github.com/hikarusei/mess-manager.git
git add .
git commit -m "sync latest changes"
git push origin main
git commit -m "sync latest changes"
git push origin main
df -h ~
du -sh ~/.bubblewrap ~/.gradle ~/mess-manager-v1/.gradle ~/mess-manager-v1/build 2>/dev/null
du -sh ~/* ~/.[!.]* 2>/dev/null | sort -rh | head -20
rm -rf ~/.bubblewrap ~/.gradle
df -h ~
cat > ~/.gitignore << 'EOF'
.gradle/
.bubblewrap/
build/
*.apk
*.aab
*.jar
node_modules/
EOF

rm -rf ~/.git
df -h ~
git init
git branch -M maingit remote add origin https://hikarusei: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@github.com/hikarusei/mess-manager.git
git config user.email "you@example.com"
git config user.name "hikarusei"git remote -v
git branch
git remote -v
git remote add origin https://hikarusei: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@github.com/hikarusei/mess-manager.git
git config user.email "you@example.com"
git config user.name "hikarusei"
