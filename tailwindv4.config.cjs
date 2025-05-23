// tailwind.config.cjs (for Tailwind ≥ 4.0.0)

const defaultColors = require("tailwindcss/colors");
console.log({defaultColors});


module.exports = {
  content: [
    "./index.html",
    "./src/**/*.{js,ts,jsx,tsx}",
  ],
  theme: {
    colors: {
      ...defaultColors,
      brand: {
        DEFAULT: "#10BED8",
        dark: "#023E73",
        light: "#79F6FC",
      },
    },
  },
  safelist: [
    'text-brand',
    'bg-brand-light',
    'bg-brand-dark',
  ],
  plugins: [],
};

