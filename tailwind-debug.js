
// debug-tailwind-config.js
/*
const resolveConfig = require("tailwindcss/resolveConfig");
const config = require("./tailwind.config.cjs");
console.log(resolveConfig(config));
*/

/*
const fs = require('fs');
const { createContext } = require('@tailwindcss/postcss');

const config = require('./tailwind.config.cjs');

const context = createContext(config);
const resolvedConfig = context.getConfig();

fs.writeFileSync('./tailwind-debug.json', JSON.stringify(resolvedConfig, null, 2));
console.log('Resolved Tailwind config written to tailwind-debug.json');

*/

const config = require('./tailwindv4.config.cjs');
console.dir(config, { depth: null });


