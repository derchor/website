class TailwindExtractor {
    static extract(content) {
        return content.match(/[\w-:/]+(?<!:)/g)
    }
}

module.exports = {
    plugins: [
        require('postcss-import')({
            path: ["assets/styles"],
        }),
        require('tailwindcss')('tailwind.config.js'),
        require('@fullhuman/postcss-purgecss')({
            content: ['source/**/*.html.erb', 'source/**/*.html', 'source/**/*.erb'],
            extractors: [
                {
                    extractor: TailwindExtractor,
                    extensions: ['html', 'erb']
                }],
            fontFace: false,
            whitelist: ['class1', 'class2']
        }),
        require('autoprefixer')({
            grid: false
        }),
    ]
}
