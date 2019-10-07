// console.log("__dirname", __dirname)
const VueLoaderPlugin = require('vue-loader/lib/plugin')

module.exports = {
  devtool: 'inline-source-map',
  entry: {
    application: './src/main.js',
  },
  output: {
    path: __dirname + '/../../app/assets/javascripts',
    filename: '[name].js'
  },
  module: {
    rules: [
      {
        test: /\.vue$/,
        loader: 'vue-loader'
      },
      {
        test: /\.js$/,
        exclude: /node_modules/,
        loader: 'babel-loader'
      },
       {
        test: /\.(c|sc)ss$/,
        use: [
        'vue-style-loader',
        'css-loader',
        'sass-loader'
        ]
      }
    ]
  },
  plugins: [
    // make sure to include the plugin!
    new VueLoaderPlugin()
  ]
}
