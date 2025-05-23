#
npx tailwindcss --config ./tailwindv4.config.cjs --content "./src/**/*.{js,ts,jsx,tsx}" --input ./src/index.css --output - \
  | tee ./out.css | grep -e '\--color'
