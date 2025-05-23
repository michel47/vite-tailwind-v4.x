### TailwindCSS v4.x and Vite + React

I spend quite some time identifying the problem with my tailwind.config.js 
when setting color theme for my React page

Well the problem was a version incompatibility between v3.4.17 and v4.x.x

chatGPT learning from the past was unable to point out a solution :
 - <https://chatgpt.com/share/683068ce-5c28-8003-b84f-b1c22fe21a9a>
 - <https://chatgpt.com/share/68306953-26c8-8003-9234-eb2f112d7a3c>
 - <https://chatgpt.com/share/683069d6-f6b8-8003-9648-1d872d3449ab>

so I made this git repos that contains a solution that does work !

> The main idea:
 don't use detault.theme.extend.colors[*]
 use detault.theme.colors[*} instead
 and add a ``@config './tailwindv4.config.mjs'`` line to your ./src/index.css file.
 
 
.
 
 
