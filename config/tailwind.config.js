const defaultTheme = require('tailwindcss/defaultTheme')

module.exports = {
  content: [
    './public/*.html',
    './app/helpers/**/*.rb',
    './app/javascript/**/*.js',
    './app/views/**/*.{erb,haml,html,slim}'
  ],
  theme: {
    extend: {
      fontFamily: {
        lato: ['Lato', 'sans-serif'],
        poppins: ['Poppins', 'sans-serif']
      },
      colors: {
        'main-bg-900': 'rgb(19, 19, 26)',
        'golden-rod': '#F7BF4F',
        'blue-light': 'rgb(144,178,245)',
        'base-gray-200': 'rgb(191,191,212)',
        'base-gray-400': 'rgb(127,127,152)',
        'base-gray-600': 'rgb(30,30,41)'
      }
    }
  },
  plugins: [
    require('@tailwindcss/forms'),
    require('@tailwindcss/aspect-ratio'),
    require('@tailwindcss/typography'),
    require('@tailwindcss/container-queries')
  ]
}
