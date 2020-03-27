module.exports = {
  theme: {
    extend: {
    	width: {
    		'72': '18rem',
    		'84': '21rem',
        '108': '27rem',
        '124': '31rem',
    	},
      height: {
        '84': '21rem',
        '108': '27rem',
        '124': '31rem',
      },
      margin: {
        '-84': '-21rem',
      },
      padding: {
        'responsive': '56.25%',
      },
      fontFamily: {
        headline: ['Montserrat', 'sans-serif']
      }
    },
  },
  variants: {},
  plugins: [
    require('@tailwindcss/custom-forms')
  ],
}
