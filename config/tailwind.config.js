const defaultTheme = require('tailwindcss/defaultTheme')
const colors = require('tailwindcss/colors')

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
        sans: ['Inter var', ...defaultTheme.fontFamily.sans],
      },
    },
    colors: {
      gray: colors.gray,
      sky: colors.sky,
      emerald: colors.emerald,
      blue: colors.blue,
      indigo: colors.indigo,
      slate: colors.slate,
      red: colors.red,
      yellow: colors.yellow,
      primary: colors.indigo,
      secondary: colors.emerald,
      tertiary: colors.slate,
      success: colors.green["500"],
      notice: colors.green["500"],
      danger: colors.red["500"],
      error: colors.red["500"],
      warning: colors.yellow["500"],
      alert: colors.yellow["500"],
      white: '#fff',
      body: colors.slate["500"]
    },
  },
  plugins: [
    require('@tailwindcss/forms'),
    require('@tailwindcss/typography'),
    require('@tailwindcss/container-queries'),
  ]
}
