module.exports = {
    devtool: 'source-maps',
    debug: true,
    entry: './root.ts',
    resolve: {
      extensions: ['', '.ts', '.js']
  },

  output: {
    path: './build',
    filename: 'bundle.js'
  },

  module: {
    loaders: [
      { test: /\.ts$/, loader: 'awesome-typescript-loader', exclude: [ /\.(spec|e2e)\.ts$/ ] }
    ]
  },

  devServer: {
    historyApiFallback: true
  },

  plugins: [

  ]

};
