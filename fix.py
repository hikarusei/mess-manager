path = '.github/workflows/build-apk.yml'
with open(path) as f:
    content = f.read()
old = 'printf "n\\n%s\\n" "$JAVA_HOME" | bubblewrap build --skipPwaValidation'
new = 'mkdir -p ~/.bubblewrap && printf \'{"jdkPath":"%s"}\' "$JAVA_HOME" > ~/.bubblewrap/config.json && ' + old
content = content.replace(old, new, 1)
with open(path, 'w') as f:
    f.write(content)
print('patched:', new in content)
