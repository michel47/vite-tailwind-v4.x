/** @type {import('tailwindcss').Config} */

//import { defaultColors } from "tailwindcss/colors";
/*
import * as _Colors from "tailwindcss/colors";
console.log(Object.keys(_Colors)); // Should show ['default', 'blue', 'gray', ...]
console.log(Object.keys(_Colors.default)); // Should show color keys: 'black', 'white', 'slate', ...
*/

import colorsModule from "tailwindcss/colors";
const defaultColors = colorsModule.default ?? colorsModule;


export default {
  content: [
    "./index.html",
    "./src/**/*.{js,ts,jsx,tsx}",
  ],
  theme: {
    colors: {
      ...defaultColors,
      brand: {
        DEFAULT: "#10BED8", // Your primary brand color
        dark: "#023E73",
        light: "#D9F6FC",
      },
    },
  },
  plugins: [],
}

