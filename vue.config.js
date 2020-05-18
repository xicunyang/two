const {name} = require('./package')

const port = 6662

module.exports = {
    outputDir: 'dist',
    filenameHashing: true,
    devServer: {
        port,
        headers: {
            'Access-Control-Allow-Origin':'*'
        }
    },
    configureWebpack: {
        output: {
            // 把子应用打包成umd库格式
            library: `${name}-[name]`,
            libraryTarget: 'umd',
            jsonpFunction: `webpackJsonp_${name}`
        }
    }
}
