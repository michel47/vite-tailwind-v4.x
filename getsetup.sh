#
base=setup
md=md

zip minimal-config.zip vite.config.ts tailwind*.config.*js postcss.config.js postcss.config.cjs package.json -x '*.*~1'
ls -l minimal-config.zip
zip -r minimal-scaffold.zip index.html *.svg src -x '*.*~1'
ls -l minimal-scaffold.zip

echo "here is my setup:" > $base.$md
echo '' >> $base.$md

if false; then
echo '```md' >> $base.$md
cat ../INSTALL.md >> $base.$md
echo '```' >> $base.$md
echo '' >> $base.$md
fi

echo '```ts' >> $base.$md
npx prettier vite.config.ts >> $base.$md
echo '```' >> $base.$md
echo '' >> $base.$md

echo "my package.json file:" >> $base.$md
echo '```json' >> $base.$md
npx prettier package.json >> $base.$md
echo '```' >> $base.$md
echo '' >> $base.$md


echo '```js' >> $base.$md
if [ -e tailwind.config.cjs ]; then
npx prettier tailwind.config.cjs >> $base.$md
else
npx prettier tailwindv4.config.*js >> $base.$md
fi
echo '```' >> $base.$md
echo '' >> $base.$md

echo '```js' >> $base.$md
if [ -e postcss.config.cjs ]; then
npx prettier postcss.config.cjs >> $base.$md
else
npx prettier postcss.config.*js >> $base.$md
fi
echo '```' >> $base.$md
echo '' >> $base.$md

echo '```css' >> $base.$md
npx prettier src/index.css >> $base.$md
echo '```' >> $base.$md
echo '' >> $base.$md

echo '```tsx' >> $base.$md
npx prettier src/main.tsx >> $base.$md
echo '```' >> $base.$md
echo '' >> $base.$md

echo '```tsx' >> $base.$md
npx prettier src/App.tsx >> $base.$md
echo '```' >> $base.$md
echo '' >> $base.$md









